// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'vehicle_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Vehicle _$VehicleFromJson(Map<String, dynamic> json) {
  return _Vehicle.fromJson(json);
}

class _$VehicleTearOff {
  const _$VehicleTearOff();

  _Vehicle call(
      {dynamic id,
      @JsonKey(name: 'client_id') int clientId,
      @JsonKey(name: 'img_url') String imgUrl,
      @JsonKey(name: 'make') String manufacturer,
      String model,
      dynamic year}) {
    return _Vehicle(
      id: id,
      clientId: clientId,
      imgUrl: imgUrl,
      manufacturer: manufacturer,
      model: model,
      year: year,
    );
  }
}

// ignore: unused_element
const $Vehicle = _$VehicleTearOff();

mixin _$Vehicle {
  dynamic get id;
  @JsonKey(name: 'client_id')
  int get clientId;
  @JsonKey(name: 'img_url')
  String get imgUrl;
  @JsonKey(name: 'make')
  String get manufacturer;
  String get model;
  dynamic get year;

  Map<String, dynamic> toJson();
  $VehicleCopyWith<Vehicle> get copyWith;
}

abstract class $VehicleCopyWith<$Res> {
  factory $VehicleCopyWith(Vehicle value, $Res Function(Vehicle) then) =
      _$VehicleCopyWithImpl<$Res>;
  $Res call(
      {dynamic id,
      @JsonKey(name: 'client_id') int clientId,
      @JsonKey(name: 'img_url') String imgUrl,
      @JsonKey(name: 'make') String manufacturer,
      String model,
      dynamic year});
}

class _$VehicleCopyWithImpl<$Res> implements $VehicleCopyWith<$Res> {
  _$VehicleCopyWithImpl(this._value, this._then);

  final Vehicle _value;
  // ignore: unused_field
  final $Res Function(Vehicle) _then;

  @override
  $Res call({
    Object id = freezed,
    Object clientId = freezed,
    Object imgUrl = freezed,
    Object manufacturer = freezed,
    Object model = freezed,
    Object year = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as dynamic,
      clientId: clientId == freezed ? _value.clientId : clientId as int,
      imgUrl: imgUrl == freezed ? _value.imgUrl : imgUrl as String,
      manufacturer: manufacturer == freezed
          ? _value.manufacturer
          : manufacturer as String,
      model: model == freezed ? _value.model : model as String,
      year: year == freezed ? _value.year : year as dynamic,
    ));
  }
}

abstract class _$VehicleCopyWith<$Res> implements $VehicleCopyWith<$Res> {
  factory _$VehicleCopyWith(_Vehicle value, $Res Function(_Vehicle) then) =
      __$VehicleCopyWithImpl<$Res>;
  @override
  $Res call(
      {dynamic id,
      @JsonKey(name: 'client_id') int clientId,
      @JsonKey(name: 'img_url') String imgUrl,
      @JsonKey(name: 'make') String manufacturer,
      String model,
      dynamic year});
}

class __$VehicleCopyWithImpl<$Res> extends _$VehicleCopyWithImpl<$Res>
    implements _$VehicleCopyWith<$Res> {
  __$VehicleCopyWithImpl(_Vehicle _value, $Res Function(_Vehicle) _then)
      : super(_value, (v) => _then(v as _Vehicle));

  @override
  _Vehicle get _value => super._value as _Vehicle;

  @override
  $Res call({
    Object id = freezed,
    Object clientId = freezed,
    Object imgUrl = freezed,
    Object manufacturer = freezed,
    Object model = freezed,
    Object year = freezed,
  }) {
    return _then(_Vehicle(
      id: id == freezed ? _value.id : id as dynamic,
      clientId: clientId == freezed ? _value.clientId : clientId as int,
      imgUrl: imgUrl == freezed ? _value.imgUrl : imgUrl as String,
      manufacturer: manufacturer == freezed
          ? _value.manufacturer
          : manufacturer as String,
      model: model == freezed ? _value.model : model as String,
      year: year == freezed ? _value.year : year as dynamic,
    ));
  }
}

@JsonSerializable()
class _$_Vehicle implements _Vehicle {
  const _$_Vehicle(
      {this.id,
      @JsonKey(name: 'client_id') this.clientId,
      @JsonKey(name: 'img_url') this.imgUrl,
      @JsonKey(name: 'make') this.manufacturer,
      this.model,
      this.year});

  factory _$_Vehicle.fromJson(Map<String, dynamic> json) =>
      _$_$_VehicleFromJson(json);

  @override
  final dynamic id;
  @override
  @JsonKey(name: 'client_id')
  final int clientId;
  @override
  @JsonKey(name: 'img_url')
  final String imgUrl;
  @override
  @JsonKey(name: 'make')
  final String manufacturer;
  @override
  final String model;
  @override
  final dynamic year;

  @override
  String toString() {
    return 'Vehicle(id: $id, clientId: $clientId, imgUrl: $imgUrl, manufacturer: $manufacturer, model: $model, year: $year)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Vehicle &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.clientId, clientId) ||
                const DeepCollectionEquality()
                    .equals(other.clientId, clientId)) &&
            (identical(other.imgUrl, imgUrl) ||
                const DeepCollectionEquality().equals(other.imgUrl, imgUrl)) &&
            (identical(other.manufacturer, manufacturer) ||
                const DeepCollectionEquality()
                    .equals(other.manufacturer, manufacturer)) &&
            (identical(other.model, model) ||
                const DeepCollectionEquality().equals(other.model, model)) &&
            (identical(other.year, year) ||
                const DeepCollectionEquality().equals(other.year, year)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(clientId) ^
      const DeepCollectionEquality().hash(imgUrl) ^
      const DeepCollectionEquality().hash(manufacturer) ^
      const DeepCollectionEquality().hash(model) ^
      const DeepCollectionEquality().hash(year);

  @override
  _$VehicleCopyWith<_Vehicle> get copyWith =>
      __$VehicleCopyWithImpl<_Vehicle>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_VehicleToJson(this);
  }
}

abstract class _Vehicle implements Vehicle {
  const factory _Vehicle(
      {dynamic id,
      @JsonKey(name: 'client_id') int clientId,
      @JsonKey(name: 'img_url') String imgUrl,
      @JsonKey(name: 'make') String manufacturer,
      String model,
      dynamic year}) = _$_Vehicle;

  factory _Vehicle.fromJson(Map<String, dynamic> json) = _$_Vehicle.fromJson;

  @override
  dynamic get id;
  @override
  @JsonKey(name: 'client_id')
  int get clientId;
  @override
  @JsonKey(name: 'img_url')
  String get imgUrl;
  @override
  @JsonKey(name: 'make')
  String get manufacturer;
  @override
  String get model;
  @override
  dynamic get year;
  @override
  _$VehicleCopyWith<_Vehicle> get copyWith;
}
