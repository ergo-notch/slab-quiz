import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slabs_quiz/data/models/service/service_model.dart';
import 'package:slabs_quiz/redux/app/app_actions.dart';

class RequestServicesAction extends ErrorAction {}

class ReceivedServicesAction {
  ReceivedServicesAction({
    @required this.services,
  });

  final List<Service> services;
}

class ErrorLoadingServicesAction {}

class AddNewServiceAction extends ErrorAction {
  AddNewServiceAction({
    @required this.newService,
  });

  final Service newService;

  void success() {
    ExtendedNavigator.rootNavigator.pop();
  }
}
