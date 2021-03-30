import 'package:redux/redux.dart';
import 'package:slabs_quiz/redux/clients/client_actions.dart';
import 'package:slabs_quiz/redux/clients/clients_state.dart';

import '../../data/loading_status.dart';

final clientsReducer = combineReducers<ClientsState>([
  TypedReducer<ClientsState, ReceivedClientsAction>(_receivedClients),
  TypedReducer<ClientsState, RequestClientsAction>(_requestClientsAction),
  TypedReducer<ClientsState, ErrorLoadingClientsAction>(_errorLoadingClients),
  TypedReducer<ClientsState, AddNewClientAction>(_requestAddClientsAction),
  TypedReducer<ClientsState, RequestClientIdAction>(_requestClientIdAction),
]);

ClientsState _requestAddClientsAction(
    ClientsState state, AddNewClientAction action) {
  return state.copyWith(loadingStatus: LoadingStatus.loading);
}

ClientsState _requestClientIdAction(
    ClientsState state, RequestClientIdAction action) {
  return state.copyWith(clientId: action.clientId);
}

ClientsState _requestClientsAction(
    ClientsState state, RequestClientsAction action) {
  return state.copyWith(loadingStatus: LoadingStatus.loading);
}

ClientsState _receivedClients(
    ClientsState state, ReceivedClientsAction action) {
  return state.copyWith(
      loadingStatus: LoadingStatus.success, clients: action.clients);
}

ClientsState _errorLoadingClients(
    ClientsState state, ErrorLoadingClientsAction action) {
  return state.copyWith(loadingStatus: LoadingStatus.error);
}
