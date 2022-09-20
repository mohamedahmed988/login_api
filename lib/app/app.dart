import 'package:flutter/material.dart';
import 'package:pixa/presention/resoursers/routes_manager.dart';
import 'package:pixa/presention/resoursers/theme_manager.dart';

class MyApp extends StatefulWidget {

   // named constructor
  
   MyApp._internal();
   int appState = 0;

  static final MyApp _instance = MyApp._internal(); //single instance
  factory MyApp(void runApp) => _instance; //factory
  @override
  _MyAppState  createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.loginRoute    ,
      theme: getApplicationTheme(),);
  }
}
