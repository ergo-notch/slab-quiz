import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slabs_quiz/data/models/vehicle/vehicle_model.dart';
import 'package:slabs_quiz/redux/app/app_actions.dart';

class RequestVehiclesAction extends ErrorAction {}

class RequestVehicleIdAction {
  RequestVehicleIdAction({@required this.vehicleId});

  final int vehicleId;
}

class ReceivedVehiclesAction {
  ReceivedVehiclesAction({
    @required this.vehicles,
  });

  final List<Vehicle> vehicles;
}

class ErrorLoadingVehicleAction {}

class AddNewVehicleAction extends ErrorAction {
  AddNewVehicleAction({
    @required this.newVehicle,
  });

  final Vehicle newVehicle;

  void success() {
    ExtendedNavigator.rootNavigator.pop();
  }
}
