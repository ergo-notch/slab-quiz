import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_model.freezed.dart';

part 'service_model.g.dart';

@freezed
abstract class Service with _$Service {
  const factory Service({
    dynamic id,
    @JsonKey(name: "service_name") String serviceName,
    @JsonKey(name: "client_id") dynamic clientId,
    @JsonKey(name: "vehicle_id") dynamic vehicleId,
    @JsonKey(name: "datetime") String date,
    @JsonKey(name: "phone_contact") String phoneNumber,
    @JsonKey(name: "country_code") String countryCode,
  }) = _Service;

  factory Service.fromJson(Map<String, dynamic> json) =>
      _$ServiceFromJson(json);
}
