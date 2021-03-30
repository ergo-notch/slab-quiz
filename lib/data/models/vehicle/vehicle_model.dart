import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicle_model.freezed.dart';
part 'vehicle_model.g.dart';

@freezed
abstract class Vehicle with _$Vehicle {
  const factory Vehicle({
    dynamic id,
    @JsonKey(name: "client_id") int clientId,
    @JsonKey(name: "img_url") String imgUrl,
    @JsonKey(name: "make") String manufacturer,
    String model,
    dynamic year
  }) = _Vehicle;

  factory Vehicle.fromJson(Map<String, dynamic> json) =>
      _$VehicleFromJson(json);
}