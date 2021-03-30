// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'vehicles_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$VehiclesStateTearOff {
  const _$VehiclesStateTearOff();

  _VehiclesState call(
      {LoadingStatus loadingStatus,
      List<Vehicle> vehicles,
      dynamic vehicleId}) {
    return _VehiclesState(
      loadingStatus: loadingStatus,
      vehicles: vehicles,
      vehicleId: vehicleId,
    );
  }
}

// ignore: unused_element
const $VehiclesState = _$VehiclesStateTearOff();

mixin _$VehiclesState {
  LoadingStatus get loadingStatus;
  List<Vehicle> get vehicles;
  dynamic get vehicleId;

  $VehiclesStateCopyWith<VehiclesState> get copyWith;
}

abstract class $VehiclesStateCopyWith<$Res> {
  factory $VehiclesStateCopyWith(
          VehiclesState value, $Res Function(VehiclesState) then) =
      _$VehiclesStateCopyWithImpl<$Res>;
  $Res call(
      {LoadingStatus loadingStatus, List<Vehicle> vehicles, dynamic vehicleId});
}

class _$VehiclesStateCopyWithImpl<$Res>
    implements $VehiclesStateCopyWith<$Res> {
  _$VehiclesStateCopyWithImpl(this._value, this._then);

  final VehiclesState _value;
  // ignore: unused_field
  final $Res Function(VehiclesState) _then;

  @override
  $Res call({
    Object loadingStatus = freezed,
    Object vehicles = freezed,
    Object vehicleId = freezed,
  }) {
    return _then(_value.copyWith(
      loadingStatus: loadingStatus == freezed
          ? _value.loadingStatus
          : loadingStatus as LoadingStatus,
      vehicles:
          vehicles == freezed ? _value.vehicles : vehicles as List<Vehicle>,
      vehicleId: vehicleId == freezed ? _value.vehicleId : vehicleId as dynamic,
    ));
  }
}

abstract class _$VehiclesStateCopyWith<$Res>
    implements $VehiclesStateCopyWith<$Res> {
  factory _$VehiclesStateCopyWith(
          _VehiclesState value, $Res Function(_VehiclesState) then) =
      __$VehiclesStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {LoadingStatus loadingStatus, List<Vehicle> vehicles, dynamic vehicleId});
}

class __$VehiclesStateCopyWithImpl<$Res>
    extends _$VehiclesStateCopyWithImpl<$Res>
    implements _$VehiclesStateCopyWith<$Res> {
  __$VehiclesStateCopyWithImpl(
      _VehiclesState _value, $Res Function(_VehiclesState) _then)
      : super(_value, (v) => _then(v as _VehiclesState));

  @override
  _VehiclesState get _value => super._value as _VehiclesState;

  @override
  $Res call({
    Object loadingStatus = freezed,
    Object vehicles = freezed,
    Object vehicleId = freezed,
  }) {
    return _then(_VehiclesState(
      loadingStatus: loadingStatus == freezed
          ? _value.loadingStatus
          : loadingStatus as LoadingStatus,
      vehicles:
          vehicles == freezed ? _value.vehicles : vehicles as List<Vehicle>,
      vehicleId: vehicleId == freezed ? _value.vehicleId : vehicleId as dynamic,
    ));
  }
}

class _$_VehiclesState implements _VehiclesState {
  const _$_VehiclesState({this.loadingStatus, this.vehicles, this.vehicleId});

  @override
  final LoadingStatus loadingStatus;
  @override
  final List<Vehicle> vehicles;
  @override
  final dynamic vehicleId;

  @override
  String toString() {
    return 'VehiclesState(loadingStatus: $loadingStatus, vehicles: $vehicles, vehicleId: $vehicleId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VehiclesState &&
            (identical(other.loadingStatus, loadingStatus) ||
                const DeepCollectionEquality()
                    .equals(other.loadingStatus, loadingStatus)) &&
            (identical(other.vehicles, vehicles) ||
                const DeepCollectionEquality()
                    .equals(other.vehicles, vehicles)) &&
            (identical(other.vehicleId, vehicleId) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleId, vehicleId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(loadingStatus) ^
      const DeepCollectionEquality().hash(vehicles) ^
      const DeepCollectionEquality().hash(vehicleId);

  @override
  _$VehiclesStateCopyWith<_VehiclesState> get copyWith =>
      __$VehiclesStateCopyWithImpl<_VehiclesState>(this, _$identity);
}

abstract class _VehiclesState implements VehiclesState {
  const factory _VehiclesState(
      {LoadingStatus loadingStatus,
      List<Vehicle> vehicles,
      dynamic vehicleId}) = _$_VehiclesState;

  @override
  LoadingStatus get loadingStatus;
  @override
  List<Vehicle> get vehicles;
  @override
  dynamic get vehicleId;
  @override
  _$VehiclesStateCopyWith<_VehiclesState> get copyWith;
}
