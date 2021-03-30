// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:slabs_quiz/ui/splash/splash_page.dart';
import 'package:slabs_quiz/ui/main_page.dart';
import 'package:slabs_quiz/ui/client/clients_page.dart';
import 'package:slabs_quiz/ui/client/new_client/new_client_page.dart';
import 'package:slabs_quiz/ui/service/service_page.dart';
import 'package:slabs_quiz/ui/service/new_service/new_service_page.dart';
import 'package:slabs_quiz/ui/vehicle/vehicles_page.dart';
import 'package:slabs_quiz/ui/vehicle/new_vehicle/new_vehicle_page.dart';

abstract class Routes {
  static const splashPage = '/';
  static const mainPage = '/main-page';
  static const clientsPage = '/clients-page';
  static const newClientPage = '/new-client-page';
  static const servicesPage = '/services-page';
  static const newServicePage = '/new-service-page';
  static const vehiclesPage = '/vehicles-page';
  static const newVehiclePage = '/new-vehicle-page';
  static const all = {
    splashPage,
    mainPage,
    clientsPage,
    newClientPage,
    servicesPage,
    newServicePage,
    vehiclesPage,
    newVehiclePage,
  };
}

class Router extends RouterBase {
  @override
  Set<String> get allRoutes => Routes.all;

  @Deprecated('call ExtendedNavigator.ofRouter<Router>() directly')
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<Router>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.splashPage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => SplashPage(),
          settings: settings,
        );
      case Routes.mainPage:
        if (hasInvalidArgs<MainPageArguments>(args)) {
          return misTypedArgsRoute<MainPageArguments>(args);
        }
        final typedArgs = args as MainPageArguments ?? MainPageArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) => MainPage(index: typedArgs.index),
          settings: settings,
        );
      case Routes.clientsPage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => ClientsPage(),
          settings: settings,
        );
      case Routes.newClientPage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => NewClientPage(),
          settings: settings,
        );
      case Routes.servicesPage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => ServicesPage(),
          settings: settings,
        );
      case Routes.newServicePage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => NewServicePage(),
          settings: settings,
        );
      case Routes.vehiclesPage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => VehiclesPage(),
          settings: settings,
        );
      case Routes.newVehiclePage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => NewVehiclePage(),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

// *************************************************************************
// Arguments holder classes
// **************************************************************************

//MainPage arguments holder class
class MainPageArguments {
  final int index;
  MainPageArguments({this.index});
}
