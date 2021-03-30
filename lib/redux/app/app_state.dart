import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:slabs_quiz/redux/clients/clients_state.dart';
import 'package:slabs_quiz/redux/services/services_state.dart';
import 'package:slabs_quiz/redux/vehicles/vehicles_state.dart';

@immutable
class AppState extends Equatable {
  AppState(
      {@required this.clientsState,
      @required this.servicesState,
      @required this.vehiclesState});

  final ClientsState clientsState;
  final ServicesState servicesState;
  final VehiclesState vehiclesState;

  static AppState rehydrationJSON(dynamic json) {
    return json != null
        ? AppState(
            clientsState: ClientsState(),
            servicesState: ServicesState(),
            vehiclesState: VehiclesState())
        : AppState.initial();
  }

  Map<String, dynamic> toJson() => {};

  factory AppState.initial() {
    return AppState(
        clientsState: ClientsState(),
        servicesState: ServicesState(),
        vehiclesState: VehiclesState());
  }

  AppState copyWith(
          {ClientsState clientsState,
          ServicesState servicesState,
          VehiclesState vehiclesState}) =>
      AppState(
          clientsState: clientsState ?? this.clientsState,
          servicesState: servicesState ?? this.servicesState,
          vehiclesState: vehiclesState ?? this.vehiclesState);

  @override
  String toString() {
    return 'AppState{clientState: $clientsState, serviceState: $servicesState, vehicleState: $vehiclesState}';
  }

  @override
  List<Object> get props => [clientsState, servicesState, vehiclesState];
}
