// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Service _$_$_ServiceFromJson(Map<String, dynamic> json) {
  return _$_Service(
    id: json['id'],
    serviceName: json['service_name'] as String,
    clientId: json['client_id'],
    vehicleId: json['vehicle_id'],
    date: json['datetime'] as String,
    phoneNumber: json['phone_contact'] as String,
    countryCode: json['country_code'] as String,
  );
}

Map<String, dynamic> _$_$_ServiceToJson(_$_Service instance) =>
    <String, dynamic>{
      'id': instance.id,
      'service_name': instance.serviceName,
      'client_id': instance.clientId,
      'vehicle_id': instance.vehicleId,
      'datetime': instance.date,
      'phone_contact': instance.phoneNumber,
      'country_code': instance.countryCode,
    };
