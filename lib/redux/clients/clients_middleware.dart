import 'dart:async';

import 'package:redux/redux.dart';
import 'package:slabs_quiz/data/models/client/client_model.dart';
import 'package:slabs_quiz/data/networking/my_api.dart';
import 'package:slabs_quiz/redux/clients/client_actions.dart';

import '../app/app_state.dart';

class ClientsMiddleware extends MiddlewareClass<AppState> {
  ClientsMiddleware(this.api);

  final Api api;

  @override
  Future<void> call(
      Store<AppState> store, dynamic action, NextDispatcher next) async {
    next(action);
    if (action is RequestClientsAction) {
      await _fetchElements(next, action, store);
    } else if (action is AddNewClientAction) {
      await _addNewClient(next, action, store);
    }
  }

  Future<void> _fetchElements(
      NextDispatcher next, dynamic action, Store<AppState> store) async {
    try {
      var response = await api.getClients();
      List<Client> clients = response.data;
      next(ReceivedClientsAction(clients: clients.reversed.toList()));
    } catch (e) {
      next(ErrorLoadingClientsAction());
    }
  }

  Future<void> _addNewClient(
      next, AddNewClientAction action, Store<AppState> store) async {
    try {
      var response = await api.getClients();
      List<Client> clients = response.data;
      var newClient = action.newClient.copyWith(id: clients.length);
      clients.add(newClient);
      var jsonMap = clients.map((e) => e.toJson()).toList();

      var newResponse = await api.updateClients(jsonMap);
      if (newResponse.statusCode == 200) {
        action.success();
      } else {
        action.showErrorToast(msg: 'Error al agregar un vehículo');
      }
      next(ReceivedClientsAction(clients: clients.reversed.toList()));
    } catch (e) {
      next(ErrorLoadingClientsAction());
    }
  }
}
