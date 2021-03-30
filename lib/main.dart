import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:slabs_quiz/redux/app/app_state.dart';
import 'package:slabs_quiz/redux/store.dart';
import 'package:slabs_quiz/ui/splash/splash_page.dart';
import 'package:slabs_quiz/router/router.gr.dart' as rt;

import 'app/app_colors.dart';
import 'app/app_settings.dart';
import 'app_config.dart';
import 'data/networking/my_api.dart';
import 'package:redux/redux.dart';

Future<void> main() async {
  var persistor = createPersistor(AppSettings.appDisplayName);

  var api = Api();
  Store<AppState> store = await createStore(api: api, persistor: persistor);

  var configuredApp;
  configuredApp = AppConfig(
      persistor: persistor,
      child: MyApp(store));

  runApp(configuredApp);
  runApp(MyApp(store));
}

class MyApp extends StatefulWidget {
  MyApp(this.store);

  final Store<AppState> store;

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var config = AppConfig.of(context);

    /// To set orientation always portrait
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    ///Set color status bar
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent, //or set color with: Color(0xFF0000FF)
    ));

    return new StoreProvider<AppState>(
        store: widget.store,
        child: MaterialApp(
            onGenerateTitle: (BuildContext context) =>
            AppSettings.appDisplayName,
            debugShowCheckedModeBanner: false,
            supportedLocales: [
              const Locale('en', ''),
              const Locale('es', ''),
            ],
            title: AppSettings.appDisplayName,
            theme: ThemeData(
                primaryColor: AppColors.primaryColor,
                accentColor: AppColors.primaryColor,
                cursorColor: AppColors.primaryColor,
                dividerColor: AppColors.darkColor,
                scaffoldBackgroundColor: Colors.white,
                hintColor: AppColors.darkColor),
            onUnknownRoute: (settings) =>
                MaterialPageRoute(builder: (context) => SplashPage()),
            builder: ExtendedNavigator<rt.Router>(router: rt.Router())));
  }
}


