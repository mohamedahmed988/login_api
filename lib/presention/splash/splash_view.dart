import 'dart:async';

import 'package:flutter/material.dart';

import 'package:pixa/presention/resoursers/assets_manager.dart';
import 'package:pixa/presention/resoursers/routes_manager.dart';


class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Timer? _timer;
  _startDelay(){
    //_timer =Timer(Duration(seconds:3), _goNext);

  }
  _goNext(){
    Navigator.pushReplacementNamed(context, Routes.loginRoute);
  }
  @override
  void initState(){
    super.initState();
    _startDelay();
  }

  @override
  Widget build(BuildContext context) => Container(
    decoration: const BoxDecoration(
      image: DecorationImage(image:AssetImage(ImageAssets.splashBg),
        fit: BoxFit.cover,
  ),
  ),



    child:  Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        alignment: Alignment.center,
        child:
        Image(image: AssetImage(ImageAssets.splashlOGO),width: 334,height: 114,),
      )
    )
  );


  void dispose(){
    _timer?.cancel();
    super.dispose();
  }
  }


