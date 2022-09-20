import 'package:flutter/material.dart';
import 'package:pixa/presention/login/login_view.dart';
import 'package:pixa/presention/orders/orders_view.dart';
import 'package:pixa/presention/resoursers/strings_manager.dart';
import 'package:pixa/presention/splash/splash_view.dart';

class Routes{

  static const String splashRoute="/";
  static const String loginRoute="/login";
  static const String ordersRoute="/orders";



}
class RouteGenerator{
  static Route<dynamic> getRoute(RouteSettings settings){
    switch(settings.name){
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_)=> const SplashView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_)=> const LoginView());
      case Routes.ordersRoute:
        return MaterialPageRoute(builder: (_)=> OrdersView());


      default :
        return unDefinedRoute();

    }
  }
  static Route<dynamic> unDefinedRoute()
  {
    return MaterialPageRoute(builder: (_)=>Scaffold(
      appBar: AppBar(title:const  Text(AppStrings.noRouteFound),),
      body: const Center(child: Text(AppStrings.noRouteFound)),


    ));
  }

}
