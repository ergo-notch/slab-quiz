import 'package:freezed_annotation/freezed_annotation.dart';

part 'client_model.freezed.dart';
part 'client_model.g.dart';

@freezed
abstract class Client with _$Client {
  const factory Client({
    dynamic id,
    @JsonKey(name: "first_name") String firstName,
    @JsonKey(name: "last_name") String lastName,
  }) = _Client;

  factory Client.fromJson(Map<String, dynamic> json) =>
      _$ClientFromJson(json);
}