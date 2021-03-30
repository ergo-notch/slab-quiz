// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'services_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ServicesStateTearOff {
  const _$ServicesStateTearOff();

  _ServicessState call({LoadingStatus loadingStatus, List<Service> services}) {
    return _ServicessState(
      loadingStatus: loadingStatus,
      services: services,
    );
  }
}

// ignore: unused_element
const $ServicesState = _$ServicesStateTearOff();

mixin _$ServicesState {
  LoadingStatus get loadingStatus;
  List<Service> get services;

  $ServicesStateCopyWith<ServicesState> get copyWith;
}

abstract class $ServicesStateCopyWith<$Res> {
  factory $ServicesStateCopyWith(
          ServicesState value, $Res Function(ServicesState) then) =
      _$ServicesStateCopyWithImpl<$Res>;
  $Res call({LoadingStatus loadingStatus, List<Service> services});
}

class _$ServicesStateCopyWithImpl<$Res>
    implements $ServicesStateCopyWith<$Res> {
  _$ServicesStateCopyWithImpl(this._value, this._then);

  final ServicesState _value;
  // ignore: unused_field
  final $Res Function(ServicesState) _then;

  @override
  $Res call({
    Object loadingStatus = freezed,
    Object services = freezed,
  }) {
    return _then(_value.copyWith(
      loadingStatus: loadingStatus == freezed
          ? _value.loadingStatus
          : loadingStatus as LoadingStatus,
      services:
          services == freezed ? _value.services : services as List<Service>,
    ));
  }
}

abstract class _$ServicessStateCopyWith<$Res>
    implements $ServicesStateCopyWith<$Res> {
  factory _$ServicessStateCopyWith(
          _ServicessState value, $Res Function(_ServicessState) then) =
      __$ServicessStateCopyWithImpl<$Res>;
  @override
  $Res call({LoadingStatus loadingStatus, List<Service> services});
}

class __$ServicessStateCopyWithImpl<$Res>
    extends _$ServicesStateCopyWithImpl<$Res>
    implements _$ServicessStateCopyWith<$Res> {
  __$ServicessStateCopyWithImpl(
      _ServicessState _value, $Res Function(_ServicessState) _then)
      : super(_value, (v) => _then(v as _ServicessState));

  @override
  _ServicessState get _value => super._value as _ServicessState;

  @override
  $Res call({
    Object loadingStatus = freezed,
    Object services = freezed,
  }) {
    return _then(_ServicessState(
      loadingStatus: loadingStatus == freezed
          ? _value.loadingStatus
          : loadingStatus as LoadingStatus,
      services:
          services == freezed ? _value.services : services as List<Service>,
    ));
  }
}

class _$_ServicessState implements _ServicessState {
  const _$_ServicessState({this.loadingStatus, this.services});

  @override
  final LoadingStatus loadingStatus;
  @override
  final List<Service> services;

  @override
  String toString() {
    return 'ServicesState(loadingStatus: $loadingStatus, services: $services)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ServicessState &&
            (identical(other.loadingStatus, loadingStatus) ||
                const DeepCollectionEquality()
                    .equals(other.loadingStatus, loadingStatus)) &&
            (identical(other.services, services) ||
                const DeepCollectionEquality()
                    .equals(other.services, services)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(loadingStatus) ^
      const DeepCollectionEquality().hash(services);

  @override
  _$ServicessStateCopyWith<_ServicessState> get copyWith =>
      __$ServicessStateCopyWithImpl<_ServicessState>(this, _$identity);
}

abstract class _ServicessState implements ServicesState {
  const factory _ServicessState(
      {LoadingStatus loadingStatus,
      List<Service> services}) = _$_ServicessState;

  @override
  LoadingStatus get loadingStatus;
  @override
  List<Service> get services;
  @override
  _$ServicessStateCopyWith<_ServicessState> get copyWith;
}
