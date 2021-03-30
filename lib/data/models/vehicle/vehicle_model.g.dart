// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Vehicle _$_$_VehicleFromJson(Map<String, dynamic> json) {
  return _$_Vehicle(
    id: json['id'],
    clientId: json['client_id'] as int,
    imgUrl: json['img_url'] as String,
    manufacturer: json['make'] as String,
    model: json['model'] as String,
    year: json['year'],
  );
}

Map<String, dynamic> _$_$_VehicleToJson(_$_Vehicle instance) =>
    <String, dynamic>{
      'id': instance.id,
      'client_id': instance.clientId,
      'img_url': instance.imgUrl,
      'make': instance.manufacturer,
      'model': instance.model,
      'year': instance.year,
    };
