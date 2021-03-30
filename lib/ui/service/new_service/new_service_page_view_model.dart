import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:redux/redux.dart';
import 'package:slabs_quiz/data/loading_status.dart';
import 'package:slabs_quiz/data/models/service/service_model.dart';
import 'package:slabs_quiz/redux/app/app_state.dart';
import 'package:slabs_quiz/redux/services/services_actions.dart';

part 'new_service_page_view_model.freezed.dart';

@freezed
abstract class NewServicePageViewModel implements _$NewServicePageViewModel {
  const NewServicePageViewModel._();

  const factory NewServicePageViewModel(
      {LoadingStatus status,
        Function(Service) addNewService}) = _NewServicePageViewModel;

  static NewServicePageViewModel fromStore(Store<AppState> store) =>
      NewServicePageViewModel(
          status:
          store.state.servicesState.loadingStatus ?? LoadingStatus.loading,
          addNewService: (service) => store.dispatch(AddNewServiceAction(newService: service)));
}
