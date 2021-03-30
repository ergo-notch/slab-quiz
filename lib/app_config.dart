import 'package:flutter/material.dart';
import 'package:redux_persist/redux_persist.dart';

class AppConfig extends InheritedWidget {
  AppConfig({@required this.persistor, @required Widget child})
      : super(child: child);

  final Persistor<dynamic> persistor;

  static AppConfig of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType();
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;
}
