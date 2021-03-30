// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'service_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Service _$ServiceFromJson(Map<String, dynamic> json) {
  return _Service.fromJson(json);
}

class _$ServiceTearOff {
  const _$ServiceTearOff();

  _Service call(
      {dynamic id,
      @JsonKey(name: 'service_name') String serviceName,
      @JsonKey(name: 'client_id') dynamic clientId,
      @JsonKey(name: 'vehicle_id') dynamic vehicleId,
      @JsonKey(name: 'datetime') String date,
      @JsonKey(name: 'phone_contact') String phoneNumber,
      @JsonKey(name: 'country_code') String countryCode}) {
    return _Service(
      id: id,
      serviceName: serviceName,
      clientId: clientId,
      vehicleId: vehicleId,
      date: date,
      phoneNumber: phoneNumber,
      countryCode: countryCode,
    );
  }
}

// ignore: unused_element
const $Service = _$ServiceTearOff();

mixin _$Service {
  dynamic get id;
  @JsonKey(name: 'service_name')
  String get serviceName;
  @JsonKey(name: 'client_id')
  dynamic get clientId;
  @JsonKey(name: 'vehicle_id')
  dynamic get vehicleId;
  @JsonKey(name: 'datetime')
  String get date;
  @JsonKey(name: 'phone_contact')
  String get phoneNumber;
  @JsonKey(name: 'country_code')
  String get countryCode;

  Map<String, dynamic> toJson();
  $ServiceCopyWith<Service> get copyWith;
}

abstract class $ServiceCopyWith<$Res> {
  factory $ServiceCopyWith(Service value, $Res Function(Service) then) =
      _$ServiceCopyWithImpl<$Res>;
  $Res call(
      {dynamic id,
      @JsonKey(name: 'service_name') String serviceName,
      @JsonKey(name: 'client_id') dynamic clientId,
      @JsonKey(name: 'vehicle_id') dynamic vehicleId,
      @JsonKey(name: 'datetime') String date,
      @JsonKey(name: 'phone_contact') String phoneNumber,
      @JsonKey(name: 'country_code') String countryCode});
}

class _$ServiceCopyWithImpl<$Res> implements $ServiceCopyWith<$Res> {
  _$ServiceCopyWithImpl(this._value, this._then);

  final Service _value;
  // ignore: unused_field
  final $Res Function(Service) _then;

  @override
  $Res call({
    Object id = freezed,
    Object serviceName = freezed,
    Object clientId = freezed,
    Object vehicleId = freezed,
    Object date = freezed,
    Object phoneNumber = freezed,
    Object countryCode = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as dynamic,
      serviceName:
          serviceName == freezed ? _value.serviceName : serviceName as String,
      clientId: clientId == freezed ? _value.clientId : clientId as dynamic,
      vehicleId: vehicleId == freezed ? _value.vehicleId : vehicleId as dynamic,
      date: date == freezed ? _value.date : date as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
      countryCode:
          countryCode == freezed ? _value.countryCode : countryCode as String,
    ));
  }
}

abstract class _$ServiceCopyWith<$Res> implements $ServiceCopyWith<$Res> {
  factory _$ServiceCopyWith(_Service value, $Res Function(_Service) then) =
      __$ServiceCopyWithImpl<$Res>;
  @override
  $Res call(
      {dynamic id,
      @JsonKey(name: 'service_name') String serviceName,
      @JsonKey(name: 'client_id') dynamic clientId,
      @JsonKey(name: 'vehicle_id') dynamic vehicleId,
      @JsonKey(name: 'datetime') String date,
      @JsonKey(name: 'phone_contact') String phoneNumber,
      @JsonKey(name: 'country_code') String countryCode});
}

class __$ServiceCopyWithImpl<$Res> extends _$ServiceCopyWithImpl<$Res>
    implements _$ServiceCopyWith<$Res> {
  __$ServiceCopyWithImpl(_Service _value, $Res Function(_Service) _then)
      : super(_value, (v) => _then(v as _Service));

  @override
  _Service get _value => super._value as _Service;

  @override
  $Res call({
    Object id = freezed,
    Object serviceName = freezed,
    Object clientId = freezed,
    Object vehicleId = freezed,
    Object date = freezed,
    Object phoneNumber = freezed,
    Object countryCode = freezed,
  }) {
    return _then(_Service(
      id: id == freezed ? _value.id : id as dynamic,
      serviceName:
          serviceName == freezed ? _value.serviceName : serviceName as String,
      clientId: clientId == freezed ? _value.clientId : clientId as dynamic,
      vehicleId: vehicleId == freezed ? _value.vehicleId : vehicleId as dynamic,
      date: date == freezed ? _value.date : date as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
      countryCode:
          countryCode == freezed ? _value.countryCode : countryCode as String,
    ));
  }
}

@JsonSerializable()
class _$_Service implements _Service {
  const _$_Service(
      {this.id,
      @JsonKey(name: 'service_name') this.serviceName,
      @JsonKey(name: 'client_id') this.clientId,
      @JsonKey(name: 'vehicle_id') this.vehicleId,
      @JsonKey(name: 'datetime') this.date,
      @JsonKey(name: 'phone_contact') this.phoneNumber,
      @JsonKey(name: 'country_code') this.countryCode});

  factory _$_Service.fromJson(Map<String, dynamic> json) =>
      _$_$_ServiceFromJson(json);

  @override
  final dynamic id;
  @override
  @JsonKey(name: 'service_name')
  final String serviceName;
  @override
  @JsonKey(name: 'client_id')
  final dynamic clientId;
  @override
  @JsonKey(name: 'vehicle_id')
  final dynamic vehicleId;
  @override
  @JsonKey(name: 'datetime')
  final String date;
  @override
  @JsonKey(name: 'phone_contact')
  final String phoneNumber;
  @override
  @JsonKey(name: 'country_code')
  final String countryCode;

  @override
  String toString() {
    return 'Service(id: $id, serviceName: $serviceName, clientId: $clientId, vehicleId: $vehicleId, date: $date, phoneNumber: $phoneNumber, countryCode: $countryCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Service &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.serviceName, serviceName) ||
                const DeepCollectionEquality()
                    .equals(other.serviceName, serviceName)) &&
            (identical(other.clientId, clientId) ||
                const DeepCollectionEquality()
                    .equals(other.clientId, clientId)) &&
            (identical(other.vehicleId, vehicleId) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleId, vehicleId)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.countryCode, countryCode) ||
                const DeepCollectionEquality()
                    .equals(other.countryCode, countryCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(serviceName) ^
      const DeepCollectionEquality().hash(clientId) ^
      const DeepCollectionEquality().hash(vehicleId) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(countryCode);

  @override
  _$ServiceCopyWith<_Service> get copyWith =>
      __$ServiceCopyWithImpl<_Service>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ServiceToJson(this);
  }
}

abstract class _Service implements Service {
  const factory _Service(
      {dynamic id,
      @JsonKey(name: 'service_name') String serviceName,
      @JsonKey(name: 'client_id') dynamic clientId,
      @JsonKey(name: 'vehicle_id') dynamic vehicleId,
      @JsonKey(name: 'datetime') String date,
      @JsonKey(name: 'phone_contact') String phoneNumber,
      @JsonKey(name: 'country_code') String countryCode}) = _$_Service;

  factory _Service.fromJson(Map<String, dynamic> json) = _$_Service.fromJson;

  @override
  dynamic get id;
  @override
  @JsonKey(name: 'service_name')
  String get serviceName;
  @override
  @JsonKey(name: 'client_id')
  dynamic get clientId;
  @override
  @JsonKey(name: 'vehicle_id')
  dynamic get vehicleId;
  @override
  @JsonKey(name: 'datetime')
  String get date;
  @override
  @JsonKey(name: 'phone_contact')
  String get phoneNumber;
  @override
  @JsonKey(name: 'country_code')
  String get countryCode;
  @override
  _$ServiceCopyWith<_Service> get copyWith;
}
