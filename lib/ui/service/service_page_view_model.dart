import 'package:auto_route/auto_route.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:redux/redux.dart';
import 'package:slabs_quiz/data/loading_status.dart';
import 'package:slabs_quiz/data/models/service/service_model.dart';
import 'package:slabs_quiz/redux/app/app_state.dart';
import 'package:slabs_quiz/redux/services/services_actions.dart';
import 'package:slabs_quiz/redux/vehicles/vehicles_actions.dart';
import 'package:slabs_quiz/router/router.gr.dart';
import 'package:slabs_quiz/ui/main_page.dart';

part 'service_page_view_model.freezed.dart';

@freezed
abstract class ServicePageViewModel implements _$ServicePageViewModel {
  const ServicePageViewModel._();

  const factory ServicePageViewModel(
      {LoadingStatus status,
      List<Service> services,
      Function addNewService,
      Function(int) getServicesByVehicleId,
      Function refreshServices}) = _ServicePageViewModel;

  static ServicePageViewModel fromStore(Store<AppState> store) =>
      ServicePageViewModel(
          status:
              store.state.servicesState.loadingStatus ?? LoadingStatus.loading,
          services: store.state.servicesState.services ?? <Service>[],
          getServicesByVehicleId: (id) {
            store.dispatch(RequestVehicleIdAction(vehicleId: id));
            ExtendedNavigator.rootNavigator.pushNamed(Routes.mainPage,
                arguments: MainPageArguments(index: MainPage.SERVICES_PAGE));
          },
          addNewService: () =>
              ExtendedNavigator.rootNavigator.pushNamed(Routes.newServicePage),
          refreshServices: () => store.dispatch(RequestServicesAction()));
}
