import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:slabs_quiz/redux/app/app_state.dart';
import 'package:slabs_quiz/redux/clients/client_actions.dart';
import 'package:slabs_quiz/ui/client/clients_cards.dart';
import 'package:slabs_quiz/ui/client/clients_page_view_model.dart';
import 'package:slabs_quiz/ui/common/custom_button.dart';
import 'package:slabs_quiz/ui/common/custom_scaffold.dart';
import 'package:slabs_quiz/ui/common/info_message_view.dart';
import 'package:slabs_quiz/ui/common/loading_view.dart';
import 'package:slabs_quiz/ui/common/platform_adaptative.dart';

class ClientsPage extends StatelessWidget {
  ClientsPage();

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, ClientsPageViewModel>(
        distinct: true,
        converter: (store) => ClientsPageViewModel.fromStore(store),
        builder: (_, viewModel) => ClientsPageContent(viewModel),
        onInit: (store) {
          store.dispatch(RequestClientsAction());
        });
  }
}

class ClientsPageContent extends StatelessWidget {
  ClientsPageContent(this.viewModel);

  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  final ClientsPageViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      bottomNavigationBar: Container(
          padding: EdgeInsets.only(bottom: 10.0),
          child: SecondaryButton(
            text: 'Agregar cliente nuevo',
            action: viewModel.addNewClient,
          )),
      body: LoadingView(
          status: viewModel.status,
          loadingContent: PlatformAdaptiveProgressIndicator(viewModel.status),
          errorContent: ErrorView(
              description: "Error en la consulta",
              title: "info_outline",
              onRetry: viewModel.refreshClients),
          successContent: SmartRefresher(
              onRefresh: _onRefresh,
              dragStartBehavior: DragStartBehavior.start,
              header: const MaterialClassicHeader(),
              controller: _refreshController,
              child: Column(children: <Widget>[
                ClientCards(viewModel: viewModel),
              ]))),
    );
  }

  Future<void> _onRefresh() async {
    final Completer<Null> completer = Completer<Null>();
    viewModel.refreshClients();
    completer.complete(null);
    return completer.future;
  }
}
