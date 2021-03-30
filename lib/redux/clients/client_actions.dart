import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slabs_quiz/data/models/client/client_model.dart';
import 'package:slabs_quiz/redux/app/app_actions.dart';

class RequestClientsAction extends ErrorAction {}

class RequestClientIdAction {
  RequestClientIdAction({@required this.clientId});

  final dynamic clientId;
}

class ReceivedClientsAction {
  ReceivedClientsAction({
    @required this.clients,
  });

  final List<Client> clients;
}

class ErrorLoadingClientsAction {}

class AddNewClientAction extends ErrorAction {
  AddNewClientAction({
    @required this.newClient,
  });

  final Client newClient;

  void success() {
    ExtendedNavigator.rootNavigator.pop();
  }
}
