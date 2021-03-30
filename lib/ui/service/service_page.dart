import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:slabs_quiz/redux/app/app_state.dart';
import 'package:slabs_quiz/redux/services/services_actions.dart';
import 'package:slabs_quiz/router/router.gr.dart';
import 'package:slabs_quiz/ui/common/custom_button.dart';
import 'package:slabs_quiz/ui/common/custom_scaffold.dart';
import 'package:slabs_quiz/ui/common/info_message_view.dart';
import 'package:slabs_quiz/ui/common/loading_view.dart';
import 'package:slabs_quiz/ui/common/platform_adaptative.dart';
import 'package:slabs_quiz/ui/service/service_cards.dart';
import 'package:slabs_quiz/ui/service/service_page_view_model.dart';

class ServicesPage extends StatelessWidget {
  ServicesPage();

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, ServicePageViewModel>(
        distinct: true,
        converter: (store) => ServicePageViewModel.fromStore(store),
        builder: (_, viewModel) => ServicePageContent(viewModel),
        onInit: (store) {
          store.dispatch(RequestServicesAction());
        });
  }
}

class ServicePageContent extends StatelessWidget {
  ServicePageContent(this.viewModel);

  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  final ServicePageViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      bottomNavigationBar: Container(
          padding: EdgeInsets.only(bottom: 10.0),
          child: SecondaryButton(
            text: 'Agregar nuevo servicio',
            action: viewModel.addNewService,
          )),
      body: LoadingView(
          status: viewModel.status,
          loadingContent: PlatformAdaptiveProgressIndicator(viewModel.status),
          errorContent: ErrorView(
              description: "Error en la consulta",
              title: "info_outline",
              onRetry: viewModel.refreshServices),
          successContent: SmartRefresher(
              onRefresh: _onRefresh,
              dragStartBehavior: DragStartBehavior.start,
              header: const MaterialClassicHeader(),
              controller: _refreshController,
              child: Column(children: <Widget>[
                ServiceCards(viewModel: viewModel),
              ]))),
    );
  }

  Future<void> _onRefresh() async {
    final Completer<Null> completer = Completer<Null>();
    viewModel.refreshServices();
    completer.complete(null);
    return completer.future;
  }
}
