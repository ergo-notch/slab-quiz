import 'dart:async';

import 'package:redux/redux.dart';
import 'package:slabs_quiz/data/models/vehicle/vehicle_model.dart';
import 'package:slabs_quiz/data/networking/my_api.dart';
import 'package:slabs_quiz/redux/vehicles/vehicles_actions.dart';

import '../app/app_state.dart';

class VehiclesMiddleware extends MiddlewareClass<AppState> {
  VehiclesMiddleware(this.api);

  final Api api;

  @override
  Future<void> call(
      Store<AppState> store, dynamic action, NextDispatcher next) async {
    next(action);
    if (action is RequestVehiclesAction) {
      await _fetchElements(next, action, store);
    } else if (action is AddNewVehicleAction) {
      await _addNewVehicle(next, action, store);
    }
  }

  Future<void> _fetchElements(
      NextDispatcher next, dynamic action, Store<AppState> store) async {
    var clientId = store.state.clientsState.clientId;
    try {
      var response = await api.getVehicles();
      List<Vehicle> vehicles = response.data;
      var newList = _getVehicleById(clientId, vehicles);
      next(ReceivedVehiclesAction(vehicles: newList));
    } catch (e) {
      next(ErrorLoadingVehicleAction());
    }
  }

  Future<void> _addNewVehicle(
      next, AddNewVehicleAction action, Store<AppState> store) async {
    var clientId = store.state.clientsState.clientId;
    try {
      var response = await api.getVehicles();
      List<Vehicle> vehicles = response.data;
      var newVehicle =
          action.newVehicle.copyWith(id: vehicles.length, clientId: clientId);
      vehicles.add(newVehicle);
      var jsonMap = vehicles.map((e) => e.toJson()).toList();

      var newResponse = await api.updateVehicles(jsonMap);
      if (newResponse.statusCode == 200) {
        action.success();
      } else {
        action.showErrorToast(msg: 'Error al agregar un vehículo');
      }
      var newList = _getVehicleById(clientId, vehicles);
      next(ReceivedVehiclesAction(vehicles: newList));
    } catch (e) {
      next(ErrorLoadingVehicleAction());
    }
  }

  List<Vehicle> _getVehicleById(int clientId, List<Vehicle> vehicles) {
    return clientId == null
        ? vehicles.reversed.toList()
        : vehicles
            .where((e) => e.clientId == clientId)
            .toList()
            .reversed
            .toList();
  }
}
