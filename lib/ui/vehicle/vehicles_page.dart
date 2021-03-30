import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:slabs_quiz/redux/app/app_state.dart';
import 'package:slabs_quiz/redux/vehicles/vehicles_actions.dart';
import 'package:slabs_quiz/ui/common/custom_button.dart';
import 'package:slabs_quiz/ui/common/custom_scaffold.dart';
import 'package:slabs_quiz/ui/common/info_message_view.dart';
import 'package:slabs_quiz/ui/common/loading_view.dart';
import 'package:slabs_quiz/ui/common/platform_adaptative.dart';
import 'package:slabs_quiz/ui/vehicle/vehicle_cards.dart';
import 'package:slabs_quiz/ui/vehicle/vehicles_page_view_model.dart';

class VehiclesPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, VehiclesPageViewModel>(
        distinct: true,
        converter: (store) => VehiclesPageViewModel.fromStore(store),
        builder: (_, viewModel) => VehiclesPageContent(viewModel),
        onInit: (store) {
          store.dispatch(RequestVehiclesAction());
        });
  }
}

class VehiclesPageContent extends StatelessWidget {
  VehiclesPageContent(this.viewModel);

  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  final VehiclesPageViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      bottomNavigationBar: Container(
          padding: EdgeInsets.only(bottom: 10.0),
          child: SecondaryButton(
            text: 'Agregar vehículo',
            action: viewModel.addNewVehicle,
          )),
      body: LoadingView(
          status: viewModel.status,
          loadingContent: PlatformAdaptiveProgressIndicator(viewModel.status),
          errorContent: ErrorView(
              description: "Error en la consulta",
              title: "info_outline",
              onRetry: viewModel.refreshVehicles),
          successContent: SmartRefresher(
              onRefresh: _onRefresh,
              dragStartBehavior: DragStartBehavior.start,
              header: const MaterialClassicHeader(),
              controller: _refreshController,
              child: Column(children: <Widget>[
                VehicleCards(viewModel: viewModel),
              ]))),
    );
  }

  Future<void> _onRefresh() async {
    final Completer<Null> completer = Completer<Null>();
    viewModel.refreshVehicles();
    completer.complete(null);
    return completer.future;
  }
}
