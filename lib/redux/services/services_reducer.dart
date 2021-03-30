import 'package:redux/redux.dart';
import 'package:slabs_quiz/redux/services/services_actions.dart';
import 'package:slabs_quiz/redux/services/services_state.dart';

import '../../data/loading_status.dart';

final servicesReducer = combineReducers<ServicesState>([
  TypedReducer<ServicesState, ReceivedServicesAction>(_receivedServices),
  TypedReducer<ServicesState, RequestServicesAction>(_requestServicesAction),
  TypedReducer<ServicesState, ErrorLoadingServicesAction>(
      _errorLoadingServices),
  TypedReducer<ServicesState, AddNewServiceAction>(_requestAddServicesAction),
]);

ServicesState _requestAddServicesAction(
    ServicesState state, AddNewServiceAction action) {
  return state.copyWith(loadingStatus: LoadingStatus.loading);
}

ServicesState _requestServicesAction(
    ServicesState state, RequestServicesAction action) {
  return state.copyWith(loadingStatus: LoadingStatus.loading);
}

ServicesState _receivedServices(
    ServicesState state, ReceivedServicesAction action) {
  return state.copyWith(
      loadingStatus: LoadingStatus.success, services: action.services);
}

ServicesState _errorLoadingServices(
    ServicesState state, ErrorLoadingServicesAction action) {
  return state.copyWith(loadingStatus: LoadingStatus.error);
}
