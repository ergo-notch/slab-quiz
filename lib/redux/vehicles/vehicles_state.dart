
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:slabs_quiz/data/models/vehicle/vehicle_model.dart';

import '../../data/loading_status.dart';

part 'vehicles_state.freezed.dart';

@freezed
abstract class VehiclesState with _$VehiclesState {
  const factory VehiclesState(
      {LoadingStatus loadingStatus,
        List<Vehicle> vehicles,
        dynamic vehicleId}) = _VehiclesState;
}
