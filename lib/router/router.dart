import 'package:auto_route/auto_route_annotations.dart';
import 'package:slabs_quiz/ui/client/clients_page.dart';
import 'package:slabs_quiz/ui/client/new_client/new_client_page.dart';
import 'package:slabs_quiz/ui/main_page.dart';
import 'package:slabs_quiz/ui/service/new_service/new_service_page.dart';
import 'package:slabs_quiz/ui/service/service_page.dart';
import 'package:slabs_quiz/ui/splash/splash_page.dart';
import 'package:slabs_quiz/ui/vehicle/new_vehicle/new_vehicle_page.dart';
import 'package:slabs_quiz/ui/vehicle/vehicles_page.dart';

@MaterialAutoRouter()
class $Router {
  @initial
  SplashPage splashPage;
  MainPage mainPage;
  ClientsPage clientsPage;
  NewClientPage newClientPage;
  ServicesPage servicesPage;
  NewServicePage newServicePage;
  VehiclesPage vehiclesPage;
  NewVehiclePage newVehiclePage;
}
