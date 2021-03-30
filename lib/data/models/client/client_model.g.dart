// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Client _$_$_ClientFromJson(Map<String, dynamic> json) {
  return _$_Client(
    id: json['id'],
    firstName: json['first_name'] as String,
    lastName: json['last_name'] as String,
  );
}

Map<String, dynamic> _$_$_ClientToJson(_$_Client instance) => <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
    };
