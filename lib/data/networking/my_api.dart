import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:slabs_quiz/app/app_settings.dart';
import 'package:slabs_quiz/data/models/client/client_model.dart';
import 'package:slabs_quiz/data/models/service/service_model.dart';
import 'package:slabs_quiz/data/models/vehicle/vehicle_model.dart';
import 'package:slabs_quiz/redux/app/app_state.dart';
import 'package:http/io_client.dart';

class Api {
  Api();

  static const String baseUrl = 'slabsquiz-default-rtdb.firebaseio.com';

  static const clientsEndpoint = "/clients/";
  static const servicesEndpoint = "/services/";
  static const vehiclesEndpoint = "/vehicles/";

  Store<AppState> store;
  IOClient _client;
  GlobalKey<NavigatorState> navigatorKey;

  Future<void> loadStore(Store<AppState> store) async {
    this.store = store;
    _client = IOClient();
  }

  Future<MyHttpResponse> getClients() async {
    var url = Uri.https(baseUrl, clientsEndpoint + AppSettings.jsonSuffix);

    MyHttpResponse response = await getRequest(url);
    List<Client> items = List<Client>();
    response.data?.forEach((client) {
      items.add(Client.fromJson(client));
    });
    response.data = items;
    return response;
  }

  Future<MyHttpResponse> getVehicles() async {
    var url = Uri.https(baseUrl, vehiclesEndpoint + AppSettings.jsonSuffix);

    MyHttpResponse response = await getRequest(url);
    List<Vehicle> items = List<Vehicle>();
    try {
      response.data?.forEach((vehicle) {
        items.add(Vehicle.fromJson(vehicle));
      });
    }catch(exception){
      exception.toString();
    }
    response.data = items;
    return response;
  }

  Future<MyHttpResponse> getServices() async {
    var url = Uri.https(baseUrl, servicesEndpoint + AppSettings.jsonSuffix);

    MyHttpResponse response = await getRequest(url);
    List<Service> items = List<Service>();
    try {
      response.data?.forEach((service) {
      items.add(Service.fromJson(service));
    });
    }catch(exception){
      exception.toString();
    }
    response.data = items;
    return response;
  }

  Future<MyHttpResponse> updateClients(dynamic clients) async {
    var url = Uri.https(baseUrl, clientsEndpoint + AppSettings.jsonSuffix);

    MyHttpResponse response = await putRequest(url, jsonMap: clients);
    List<Client> items = List<Client>();
    response.data?.forEach((client) {
      items.add(Client.fromJson(client));
    });
    response.data = items;
    return response;
  }

  Future<MyHttpResponse> updateVehicles(dynamic vehicles) async {
    var url = Uri.https(baseUrl, vehiclesEndpoint + AppSettings.jsonSuffix);

    MyHttpResponse response = await putRequest(url, jsonMap: vehicles);
    List<Vehicle> items = List<Vehicle>();
    response.data?.forEach((vehicle) {
      items.add(Vehicle.fromJson(vehicle));
    });
    response.data = items;
    return response;
  }

  Future<MyHttpResponse> updateServices(dynamic services) async {
    var url = Uri.https(baseUrl, servicesEndpoint + AppSettings.jsonSuffix);

    MyHttpResponse response = await putRequest(url, jsonMap: services);
    List<Service> items = List<Service>();
    response.data?.forEach((service) {
      items.add(Service.fromJson(service));
    });
    response.data = items;
    return response;
  }

  Future<MyHttpResponse> getRequest(Uri uri,
      {bool shouldRetry = true, Map jsonMap, Map additionalHeaders}) async {
    Map<String, String> headers = {
      'Content-Type': "application/json",
    };
    var response = await _client.get(uri, headers: headers);

    var data = json.decode(utf8.decode(response.bodyBytes));

    return MyHttpResponse(response.statusCode, data,
        message: response.statusCode != 200 ? data : '');
  }

  Future<MyHttpResponse> putRequest(Uri uri,
      {bool shouldRetry = true, dynamic jsonMap, Map additionalHeaders}) async {
    Map<String, String> headers = {
      'Content-Type': "application/json",
    };
    var response = await _client.put(uri,
        headers: headers, body: utf8.encode(json.encode(jsonMap)));

    var data = json.decode(utf8.decode(response.bodyBytes));

    return MyHttpResponse(response.statusCode, data,
        message: response.statusCode != 200 ? data : '');
  }
}

class MyHttpResponse {
  int statusCode;
  String message;
  dynamic data;

  MyHttpResponse(this.statusCode, this.data, {this.message});

  @override
  String toString() {
    return 'MyHttpResponse{statusCode: $statusCode, message: $message, data: $data}';
  }
}
