import 'dart:async';
import 'package:redux/redux.dart';
import 'package:slabs_quiz/data/models/service/service_model.dart';
import 'package:slabs_quiz/data/networking/my_api.dart';
import 'package:slabs_quiz/redux/services/services_actions.dart';
import 'package:slabs_quiz/ui/utils/string_utils.dart';

import '../app/app_state.dart';

class ServicesMiddleware extends MiddlewareClass<AppState> {
  ServicesMiddleware(this.api);

  final Api api;

  @override
  Future<void> call(
      Store<AppState> store, dynamic action, NextDispatcher next) async {
    next(action);
    if (action is RequestServicesAction) {
      await _fetchElements(next, action, store);
    } else if (action is AddNewServiceAction) {
      _addNewService(next, action, store);
    }
  }

  Future<void> _fetchElements(
      NextDispatcher next, dynamic action, Store<AppState> store) async {
    try {
      var response = await api.getServices();
      var vehicleId = store.state.vehiclesState.vehicleId;
      List<Service> services = response.data;
      var newList = _getServiceById(vehicleId, services);
      next(ReceivedServicesAction(services: _sortList(newList)));
    } catch (e) {
      next(ErrorLoadingServicesAction());
    }
  }

  Future<void> _addNewService(
      next, AddNewServiceAction action, Store<AppState> store) async {
    var vehicleId = store.state.vehiclesState.vehicleId;
    try {
      var response = await api.getServices();
      List<Service> services = response.data;
      var newService =
          action.newService.copyWith(vehicleId: vehicleId);
      services.add(newService);
      var jsonMap = services.map((e) => e.toJson()).toList();

      var newResponse = await api.updateServices(jsonMap);
      if (newResponse.statusCode == 200) {
        action.success();
      } else {
        action.showErrorToast(msg: 'Error al agregar un servicio');
      }
      var newList = _getServiceById(vehicleId, services);
      next(ReceivedServicesAction(services: _sortList(newList)));
    } catch (e) {
      next(ErrorLoadingServicesAction());
    }
  }

  List<Service> _sortList(List<Service> serviceList) {
    serviceList.sort((a, b) => StringUtils.convertToDateTime(a.date)
        .millisecondsSinceEpoch
        .compareTo(
            StringUtils.convertToDateTime(b.date).millisecondsSinceEpoch));
    return serviceList;
  }

  List<Service> _getServiceById(int vehicleId, List<Service> services) {
    return vehicleId == null
        ? services.reversed.toList()
        : services
            .where((e) => e.vehicleId == vehicleId)
            .toList()
            .reversed
            .toList();
  }
}
