import 'package:pixa/presention/resoursers/routes_manager.dart';
import 'package:pixa/presention/resoursers/theme_manager.dart';
import 'package:pixa/provider/login_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';


void main(){

  runApp(MultiProvider(
    providers: [

      ChangeNotifierProvider<LoginProvider>(create: (_) => LoginProvider()),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState(){
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.loginRoute    ,
      theme: getApplicationTheme(),);
  }
}

