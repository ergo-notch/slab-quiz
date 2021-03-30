import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:slabs_quiz/data/models/client/client_model.dart';

import '../../data/loading_status.dart';

part 'clients_state.freezed.dart';

@freezed
abstract class ClientsState with _$ClientsState {
  const factory ClientsState(
      {LoadingStatus loadingStatus,
      List<Client> clients,
      dynamic clientId}) = _ClientsState;
}
