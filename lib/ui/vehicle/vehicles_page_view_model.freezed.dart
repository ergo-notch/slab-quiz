// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'vehicles_page_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$VehiclesPageViewModelTearOff {
  const _$VehiclesPageViewModelTearOff();

  _VehiclesPageViewModel call(
      {LoadingStatus status,
      List<Vehicle> vehicles,
      Function addNewVehicle,
      Function refreshVehicles,
      dynamic Function(int) getServiceByVehicle}) {
    return _VehiclesPageViewModel(
      status: status,
      vehicles: vehicles,
      addNewVehicle: addNewVehicle,
      refreshVehicles: refreshVehicles,
      getServiceByVehicle: getServiceByVehicle,
    );
  }
}

// ignore: unused_element
const $VehiclesPageViewModel = _$VehiclesPageViewModelTearOff();

mixin _$VehiclesPageViewModel {
  LoadingStatus get status;
  List<Vehicle> get vehicles;
  Function get addNewVehicle;
  Function get refreshVehicles;
  dynamic Function(int) get getServiceByVehicle;

  $VehiclesPageViewModelCopyWith<VehiclesPageViewModel> get copyWith;
}

abstract class $VehiclesPageViewModelCopyWith<$Res> {
  factory $VehiclesPageViewModelCopyWith(VehiclesPageViewModel value,
          $Res Function(VehiclesPageViewModel) then) =
      _$VehiclesPageViewModelCopyWithImpl<$Res>;
  $Res call(
      {LoadingStatus status,
      List<Vehicle> vehicles,
      Function addNewVehicle,
      Function refreshVehicles,
      dynamic Function(int) getServiceByVehicle});
}

class _$VehiclesPageViewModelCopyWithImpl<$Res>
    implements $VehiclesPageViewModelCopyWith<$Res> {
  _$VehiclesPageViewModelCopyWithImpl(this._value, this._then);

  final VehiclesPageViewModel _value;
  // ignore: unused_field
  final $Res Function(VehiclesPageViewModel) _then;

  @override
  $Res call({
    Object status = freezed,
    Object vehicles = freezed,
    Object addNewVehicle = freezed,
    Object refreshVehicles = freezed,
    Object getServiceByVehicle = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed ? _value.status : status as LoadingStatus,
      vehicles:
          vehicles == freezed ? _value.vehicles : vehicles as List<Vehicle>,
      addNewVehicle: addNewVehicle == freezed
          ? _value.addNewVehicle
          : addNewVehicle as Function,
      refreshVehicles: refreshVehicles == freezed
          ? _value.refreshVehicles
          : refreshVehicles as Function,
      getServiceByVehicle: getServiceByVehicle == freezed
          ? _value.getServiceByVehicle
          : getServiceByVehicle as dynamic Function(int),
    ));
  }
}

abstract class _$VehiclesPageViewModelCopyWith<$Res>
    implements $VehiclesPageViewModelCopyWith<$Res> {
  factory _$VehiclesPageViewModelCopyWith(_VehiclesPageViewModel value,
          $Res Function(_VehiclesPageViewModel) then) =
      __$VehiclesPageViewModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {LoadingStatus status,
      List<Vehicle> vehicles,
      Function addNewVehicle,
      Function refreshVehicles,
      dynamic Function(int) getServiceByVehicle});
}

class __$VehiclesPageViewModelCopyWithImpl<$Res>
    extends _$VehiclesPageViewModelCopyWithImpl<$Res>
    implements _$VehiclesPageViewModelCopyWith<$Res> {
  __$VehiclesPageViewModelCopyWithImpl(_VehiclesPageViewModel _value,
      $Res Function(_VehiclesPageViewModel) _then)
      : super(_value, (v) => _then(v as _VehiclesPageViewModel));

  @override
  _VehiclesPageViewModel get _value => super._value as _VehiclesPageViewModel;

  @override
  $Res call({
    Object status = freezed,
    Object vehicles = freezed,
    Object addNewVehicle = freezed,
    Object refreshVehicles = freezed,
    Object getServiceByVehicle = freezed,
  }) {
    return _then(_VehiclesPageViewModel(
      status: status == freezed ? _value.status : status as LoadingStatus,
      vehicles:
          vehicles == freezed ? _value.vehicles : vehicles as List<Vehicle>,
      addNewVehicle: addNewVehicle == freezed
          ? _value.addNewVehicle
          : addNewVehicle as Function,
      refreshVehicles: refreshVehicles == freezed
          ? _value.refreshVehicles
          : refreshVehicles as Function,
      getServiceByVehicle: getServiceByVehicle == freezed
          ? _value.getServiceByVehicle
          : getServiceByVehicle as dynamic Function(int),
    ));
  }
}

class _$_VehiclesPageViewModel extends _VehiclesPageViewModel {
  const _$_VehiclesPageViewModel(
      {this.status,
      this.vehicles,
      this.addNewVehicle,
      this.refreshVehicles,
      this.getServiceByVehicle})
      : super._();

  @override
  final LoadingStatus status;
  @override
  final List<Vehicle> vehicles;
  @override
  final Function addNewVehicle;
  @override
  final Function refreshVehicles;
  @override
  final dynamic Function(int) getServiceByVehicle;

  @override
  String toString() {
    return 'VehiclesPageViewModel(status: $status, vehicles: $vehicles, addNewVehicle: $addNewVehicle, refreshVehicles: $refreshVehicles, getServiceByVehicle: $getServiceByVehicle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VehiclesPageViewModel &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.vehicles, vehicles) ||
                const DeepCollectionEquality()
                    .equals(other.vehicles, vehicles)) &&
            (identical(other.addNewVehicle, addNewVehicle) ||
                const DeepCollectionEquality()
                    .equals(other.addNewVehicle, addNewVehicle)) &&
            (identical(other.refreshVehicles, refreshVehicles) ||
                const DeepCollectionEquality()
                    .equals(other.refreshVehicles, refreshVehicles)) &&
            (identical(other.getServiceByVehicle, getServiceByVehicle) ||
                const DeepCollectionEquality()
                    .equals(other.getServiceByVehicle, getServiceByVehicle)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(vehicles) ^
      const DeepCollectionEquality().hash(addNewVehicle) ^
      const DeepCollectionEquality().hash(refreshVehicles) ^
      const DeepCollectionEquality().hash(getServiceByVehicle);

  @override
  _$VehiclesPageViewModelCopyWith<_VehiclesPageViewModel> get copyWith =>
      __$VehiclesPageViewModelCopyWithImpl<_VehiclesPageViewModel>(
          this, _$identity);
}

abstract class _VehiclesPageViewModel extends VehiclesPageViewModel {
  const _VehiclesPageViewModel._() : super._();
  const factory _VehiclesPageViewModel(
      {LoadingStatus status,
      List<Vehicle> vehicles,
      Function addNewVehicle,
      Function refreshVehicles,
      dynamic Function(int) getServiceByVehicle}) = _$_VehiclesPageViewModel;

  @override
  LoadingStatus get status;
  @override
  List<Vehicle> get vehicles;
  @override
  Function get addNewVehicle;
  @override
  Function get refreshVehicles;
  @override
  dynamic Function(int) get getServiceByVehicle;
  @override
  _$VehiclesPageViewModelCopyWith<_VehiclesPageViewModel> get copyWith;
}
