import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'Login.dart';
import 'package:ckda_app_v1/Services/prediction_service.dart';

void setupLocator() {
  GetIt.I.registerLazySingleton(() => PredictionService());
}

void main() async {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Login(),
    );
  }
}
