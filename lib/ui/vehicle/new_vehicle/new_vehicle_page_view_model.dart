import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:redux/redux.dart';
import 'package:slabs_quiz/data/loading_status.dart';
import 'package:slabs_quiz/data/models/vehicle/vehicle_model.dart';
import 'package:slabs_quiz/redux/app/app_state.dart';
import 'package:slabs_quiz/redux/vehicles/vehicles_actions.dart';

part 'new_vehicle_page_view_model.freezed.dart';

@freezed
abstract class NewVehiclePageViewModel implements _$NewVehiclePageViewModel {
  const NewVehiclePageViewModel._();

  const factory NewVehiclePageViewModel(
      {LoadingStatus status,
        Function(Vehicle) addNewVehicle}) = _NewVehiclePageViewModel;

  static NewVehiclePageViewModel fromStore(Store<AppState> store) =>
      NewVehiclePageViewModel(
          status:
          store.state.vehiclesState.loadingStatus ?? LoadingStatus.loading,
          addNewVehicle: (vehicle) => store.dispatch(AddNewVehicleAction(newVehicle: vehicle)));
}
