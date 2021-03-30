import 'package:slabs_quiz/redux/clients/clients_reducer.dart';
import 'package:slabs_quiz/redux/services/services_reducer.dart';
import 'package:slabs_quiz/redux/vehicles/vehicles_reduces.dart';

import 'app_state.dart';

AppState appReducer(AppState state, dynamic action) {
  return new AppState(
      clientsState: clientsReducer(state.clientsState, action),
      servicesState: servicesReducer(state.servicesState, action),
      vehiclesState: vehiclesReducer(state.vehiclesState, action));
}
