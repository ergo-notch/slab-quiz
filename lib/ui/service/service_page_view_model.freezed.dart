// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'service_page_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ServicePageViewModelTearOff {
  const _$ServicePageViewModelTearOff();

  _ServicePageViewModel call(
      {LoadingStatus status,
      List<Service> services,
      Function addNewService,
      dynamic Function(int) getServicesByVehicleId,
      Function refreshServices}) {
    return _ServicePageViewModel(
      status: status,
      services: services,
      addNewService: addNewService,
      getServicesByVehicleId: getServicesByVehicleId,
      refreshServices: refreshServices,
    );
  }
}

// ignore: unused_element
const $ServicePageViewModel = _$ServicePageViewModelTearOff();

mixin _$ServicePageViewModel {
  LoadingStatus get status;
  List<Service> get services;
  Function get addNewService;
  dynamic Function(int) get getServicesByVehicleId;
  Function get refreshServices;

  $ServicePageViewModelCopyWith<ServicePageViewModel> get copyWith;
}

abstract class $ServicePageViewModelCopyWith<$Res> {
  factory $ServicePageViewModelCopyWith(ServicePageViewModel value,
          $Res Function(ServicePageViewModel) then) =
      _$ServicePageViewModelCopyWithImpl<$Res>;
  $Res call(
      {LoadingStatus status,
      List<Service> services,
      Function addNewService,
      dynamic Function(int) getServicesByVehicleId,
      Function refreshServices});
}

class _$ServicePageViewModelCopyWithImpl<$Res>
    implements $ServicePageViewModelCopyWith<$Res> {
  _$ServicePageViewModelCopyWithImpl(this._value, this._then);

  final ServicePageViewModel _value;
  // ignore: unused_field
  final $Res Function(ServicePageViewModel) _then;

  @override
  $Res call({
    Object status = freezed,
    Object services = freezed,
    Object addNewService = freezed,
    Object getServicesByVehicleId = freezed,
    Object refreshServices = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed ? _value.status : status as LoadingStatus,
      services:
          services == freezed ? _value.services : services as List<Service>,
      addNewService: addNewService == freezed
          ? _value.addNewService
          : addNewService as Function,
      getServicesByVehicleId: getServicesByVehicleId == freezed
          ? _value.getServicesByVehicleId
          : getServicesByVehicleId as dynamic Function(int),
      refreshServices: refreshServices == freezed
          ? _value.refreshServices
          : refreshServices as Function,
    ));
  }
}

abstract class _$ServicePageViewModelCopyWith<$Res>
    implements $ServicePageViewModelCopyWith<$Res> {
  factory _$ServicePageViewModelCopyWith(_ServicePageViewModel value,
          $Res Function(_ServicePageViewModel) then) =
      __$ServicePageViewModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {LoadingStatus status,
      List<Service> services,
      Function addNewService,
      dynamic Function(int) getServicesByVehicleId,
      Function refreshServices});
}

class __$ServicePageViewModelCopyWithImpl<$Res>
    extends _$ServicePageViewModelCopyWithImpl<$Res>
    implements _$ServicePageViewModelCopyWith<$Res> {
  __$ServicePageViewModelCopyWithImpl(
      _ServicePageViewModel _value, $Res Function(_ServicePageViewModel) _then)
      : super(_value, (v) => _then(v as _ServicePageViewModel));

  @override
  _ServicePageViewModel get _value => super._value as _ServicePageViewModel;

  @override
  $Res call({
    Object status = freezed,
    Object services = freezed,
    Object addNewService = freezed,
    Object getServicesByVehicleId = freezed,
    Object refreshServices = freezed,
  }) {
    return _then(_ServicePageViewModel(
      status: status == freezed ? _value.status : status as LoadingStatus,
      services:
          services == freezed ? _value.services : services as List<Service>,
      addNewService: addNewService == freezed
          ? _value.addNewService
          : addNewService as Function,
      getServicesByVehicleId: getServicesByVehicleId == freezed
          ? _value.getServicesByVehicleId
          : getServicesByVehicleId as dynamic Function(int),
      refreshServices: refreshServices == freezed
          ? _value.refreshServices
          : refreshServices as Function,
    ));
  }
}

class _$_ServicePageViewModel extends _ServicePageViewModel {
  const _$_ServicePageViewModel(
      {this.status,
      this.services,
      this.addNewService,
      this.getServicesByVehicleId,
      this.refreshServices})
      : super._();

  @override
  final LoadingStatus status;
  @override
  final List<Service> services;
  @override
  final Function addNewService;
  @override
  final dynamic Function(int) getServicesByVehicleId;
  @override
  final Function refreshServices;

  @override
  String toString() {
    return 'ServicePageViewModel(status: $status, services: $services, addNewService: $addNewService, getServicesByVehicleId: $getServicesByVehicleId, refreshServices: $refreshServices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ServicePageViewModel &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.services, services) ||
                const DeepCollectionEquality()
                    .equals(other.services, services)) &&
            (identical(other.addNewService, addNewService) ||
                const DeepCollectionEquality()
                    .equals(other.addNewService, addNewService)) &&
            (identical(other.getServicesByVehicleId, getServicesByVehicleId) ||
                const DeepCollectionEquality().equals(
                    other.getServicesByVehicleId, getServicesByVehicleId)) &&
            (identical(other.refreshServices, refreshServices) ||
                const DeepCollectionEquality()
                    .equals(other.refreshServices, refreshServices)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(services) ^
      const DeepCollectionEquality().hash(addNewService) ^
      const DeepCollectionEquality().hash(getServicesByVehicleId) ^
      const DeepCollectionEquality().hash(refreshServices);

  @override
  _$ServicePageViewModelCopyWith<_ServicePageViewModel> get copyWith =>
      __$ServicePageViewModelCopyWithImpl<_ServicePageViewModel>(
          this, _$identity);
}

abstract class _ServicePageViewModel extends ServicePageViewModel {
  const _ServicePageViewModel._() : super._();
  const factory _ServicePageViewModel(
      {LoadingStatus status,
      List<Service> services,
      Function addNewService,
      dynamic Function(int) getServicesByVehicleId,
      Function refreshServices}) = _$_ServicePageViewModel;

  @override
  LoadingStatus get status;
  @override
  List<Service> get services;
  @override
  Function get addNewService;
  @override
  dynamic Function(int) get getServicesByVehicleId;
  @override
  Function get refreshServices;
  @override
  _$ServicePageViewModelCopyWith<_ServicePageViewModel> get copyWith;
}
