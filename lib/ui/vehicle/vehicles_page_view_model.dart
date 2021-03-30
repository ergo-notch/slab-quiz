import 'package:auto_route/auto_route.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:redux/redux.dart';
import 'package:slabs_quiz/data/loading_status.dart';
import 'package:slabs_quiz/data/models/vehicle/vehicle_model.dart';
import 'package:slabs_quiz/redux/app/app_state.dart';
import 'package:slabs_quiz/redux/vehicles/vehicles_actions.dart';
import 'package:slabs_quiz/router/router.gr.dart';
import 'package:slabs_quiz/ui/main_page.dart';

part 'vehicles_page_view_model.freezed.dart';

@freezed
abstract class VehiclesPageViewModel implements _$VehiclesPageViewModel {
  const VehiclesPageViewModel._();

  const factory VehiclesPageViewModel({
    LoadingStatus status,
    List<Vehicle> vehicles,
    Function addNewVehicle,
    Function refreshVehicles,
    Function(int) getServiceByVehicle,
  }) = _VehiclesPageViewModel;

  static VehiclesPageViewModel fromStore(Store<AppState> store) =>
      VehiclesPageViewModel(
          status:
              store.state.vehiclesState.loadingStatus ?? LoadingStatus.loading,
          vehicles: store.state.vehiclesState.vehicles ?? <Vehicle>[],
          addNewVehicle: () =>
              ExtendedNavigator.rootNavigator.pushNamed(Routes.newVehiclePage),
          refreshVehicles: () => store.dispatch(RequestVehiclesAction()),
          getServiceByVehicle: (id) {
            store.dispatch(RequestVehicleIdAction(vehicleId: id));
            ExtendedNavigator.rootNavigator.pushNamed(Routes.mainPage,
                arguments: MainPageArguments(index: MainPage.SERVICES_PAGE));
          });
}
