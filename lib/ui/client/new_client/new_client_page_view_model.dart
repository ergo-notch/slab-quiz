import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:redux/redux.dart';
import 'package:slabs_quiz/data/loading_status.dart';
import 'package:slabs_quiz/data/models/client/client_model.dart';
import 'package:slabs_quiz/redux/app/app_state.dart';
import 'package:slabs_quiz/redux/clients/client_actions.dart';

part 'new_client_page_view_model.freezed.dart';

@freezed
abstract class NewClientPageViewModel implements _$NewClientPageViewModel {
  const NewClientPageViewModel._();

  const factory NewClientPageViewModel(
      {LoadingStatus status,
      Function(Client) addNewClient}) = _NewServicePageViewModel;

  static NewClientPageViewModel fromStore(Store<AppState> store) =>
      NewClientPageViewModel(
          status:
              store.state.clientsState.loadingStatus ?? LoadingStatus.loading,
          addNewClient: (client) =>
              store.dispatch(AddNewClientAction(newClient: client)));
}
