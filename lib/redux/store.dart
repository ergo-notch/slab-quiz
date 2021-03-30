import 'package:redux_persist/redux_persist.dart';
import 'package:redux_persist_flutter/redux_persist_flutter.dart';
import 'package:redux/redux.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:slabs_quiz/data/networking/my_api.dart';
import 'package:slabs_quiz/redux/clients/clients_middleware.dart';
import 'package:slabs_quiz/redux/services/services_middleware.dart';
import 'package:slabs_quiz/redux/vehicles/vehicles_middleware.dart';

import 'app/app_reducer.dart';
import 'app/app_state.dart';

Persistor<AppState> createPersistor(String key) => new Persistor<AppState>(
    storage: new FlutterStorage(key: key),
    serializer: JsonSerializer<AppState>(AppState.rehydrationJSON));

Future<Store<AppState>> createStore(
    {Api api, Persistor<AppState> persistor}) async {
  // var prefs = await SharedPreferences.getInstance();
  AppState initialState;

  try {
    initialState = await persistor.load();
  } catch (e) {
    initialState = AppState.initial();
  }

  Store<AppState> store = Store(appReducer,
      initialState: initialState ?? AppState.initial(),
      distinct: true,
      middleware: [
        ServicesMiddleware(api),
        VehiclesMiddleware(api),
        ClientsMiddleware(api),
        persistor.createMiddleware()
      ]);
  api.loadStore(store);
  return store;
}
