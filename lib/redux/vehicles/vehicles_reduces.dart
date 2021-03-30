import 'package:redux/redux.dart';
import 'package:slabs_quiz/redux/services/services_actions.dart';
import 'package:slabs_quiz/redux/services/services_state.dart';
import 'package:slabs_quiz/redux/vehicles/vehicles_actions.dart';
import 'package:slabs_quiz/redux/vehicles/vehicles_state.dart';

import '../../data/loading_status.dart';

final vehiclesReducer = combineReducers<VehiclesState>([
  TypedReducer<VehiclesState, ReceivedVehiclesAction>(_receivedVehiclesAction),
  TypedReducer<VehiclesState, RequestVehiclesAction>(_requestVehiclesAction),
  TypedReducer<VehiclesState, ErrorLoadingVehicleAction>(_errorLoadingVehicles),
  TypedReducer<VehiclesState, AddNewVehicleAction>(_requestAddVehicleAction),
  TypedReducer<VehiclesState, RequestVehicleIdAction>(_requestVehicleIdAction),
]);

VehiclesState _requestAddVehicleAction(
    VehiclesState state, AddNewVehicleAction action) {
  return state.copyWith(loadingStatus: LoadingStatus.loading);
}

VehiclesState _requestVehicleIdAction(
    VehiclesState state, RequestVehicleIdAction action) {
  return state.copyWith(vehicleId: action.vehicleId);
}

VehiclesState _requestVehiclesAction(
    VehiclesState state, RequestVehiclesAction action) {
  return state.copyWith(loadingStatus: LoadingStatus.loading);
}

VehiclesState _receivedVehiclesAction(
    VehiclesState state, ReceivedVehiclesAction action) {
  return state.copyWith(
      loadingStatus: LoadingStatus.success, vehicles: action.vehicles);
}

VehiclesState _errorLoadingVehicles(
    VehiclesState state, ErrorLoadingVehicleAction action) {
  return state.copyWith(loadingStatus: LoadingStatus.error);
}
