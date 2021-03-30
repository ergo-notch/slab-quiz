import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:redux/redux.dart';
import 'package:slabs_quiz/data/loading_status.dart';
import 'package:slabs_quiz/data/models/client/client_model.dart';
import 'package:slabs_quiz/redux/app/app_state.dart';
import 'package:slabs_quiz/redux/clients/client_actions.dart';
import 'package:slabs_quiz/router/router.gr.dart';
import 'package:slabs_quiz/ui/main_page.dart';

part 'clients_page_view_model.freezed.dart';

@freezed
abstract class ClientsPageViewModel implements _$ClientsPageViewModel {
  const ClientsPageViewModel._();

  const factory ClientsPageViewModel(
      {LoadingStatus status,
      List<Client> clients,
      Function addNewClient,
      Function(int) getVehiclesById,
      Function refreshClients}) = _ClientsPageViewModel;

  static ClientsPageViewModel fromStore(Store<AppState> store) =>
      ClientsPageViewModel(
          status:
              store.state.clientsState.loadingStatus ?? LoadingStatus.loading,
          clients: store.state.clientsState.clients ?? <Client>[],
          addNewClient: () =>
              ExtendedNavigator.rootNavigator.pushNamed(Routes.newClientPage),
          getVehiclesById: (id) {
            store.dispatch(RequestClientIdAction(clientId: id));
            ExtendedNavigator.rootNavigator.pushNamed(Routes.mainPage,
                arguments: MainPageArguments(index: MainPage.VEHICLES_PAGE));
          },
          refreshClients: () => store.dispatch(RequestClientsAction()));
}
