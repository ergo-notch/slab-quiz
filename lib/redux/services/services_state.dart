
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:slabs_quiz/data/models/service/service_model.dart';

import '../../data/loading_status.dart';

part 'services_state.freezed.dart';

@freezed
abstract class ServicesState with _$ServicesState {
  const factory ServicesState(
      {LoadingStatus loadingStatus,
        List<Service> services}) = _ServicessState;
}
