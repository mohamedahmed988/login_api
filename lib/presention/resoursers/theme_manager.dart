import 'package:flutter/material.dart';
import 'package:pixa/presention/resoursers/color_manager.dart';
import 'package:pixa/presention/resoursers/font_manager.dart';
import 'package:pixa/presention/resoursers/styles_manager.dart';
import 'package:pixa/presention/resoursers/values_manger.dart';

ThemeData getApplicationTheme(){
  return ThemeData(

      //main colors
      primaryColor: ColorManger.primary,
      primaryColorLight: ColorManger.primary,
      primaryColorDark: ColorManger.darkGray,
      disabledColor: ColorManger.gray0,


      //carview theme


      cardTheme: CardTheme(
      color: ColorManger.primary,
      shadowColor: ColorManger.gray,
      elevation: AppSize.s4,
      ),



      //app bar theme
        appBarTheme: AppBarTheme(centerTitle: true,
            color: ColorManger.primary,
            elevation:AppSize.s4,
            shadowColor:ColorManger.fogGray,
            titleTextStyle: getRegularStyle(fontSize: FontSize.s16, color: ColorManger.primary )),
    buttonTheme: ButtonThemeData(
      shape: StadiumBorder(),
      disabledColor: ColorManger.gray,
      buttonColor: ColorManger.primary,
      splashColor: ColorManger.gray0),


      //elevated  button them
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          textStyle: getDemiBoldStyle(color: ColorManger.primary,
          fontSize: FontSize.s15),
          primary: ColorManger.primary,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSize.s12)))),



       //Text theme
          textTheme:TextTheme(
            displayLarge:
              getRegularStyle(color: ColorManger.gray0),
            headlineLarge: getDemiBoldStyle
              (color: ColorManger.gray0,
              fontSize: FontSize.s25),
            titleMedium: getRegularStyle(color: ColorManger.darkGray),
            bodyLarge: getRegularStyle(color: ColorManger.silver),
            bodySmall: getRegularStyle(color: ColorManger.gray)),


      inputDecorationTheme: InputDecorationTheme(
        contentPadding:
                 EdgeInsets.all(AppPadding.p8),
        //hint style
        hintStyle:
                 getRegularStyle(color: ColorManger.gray, fontSize: FontSize.s14),
        labelStyle:
                 getDemiBoldStyle(color: ColorManger.gray,fontSize: FontSize.s14),
        errorStyle:
                  getRegularStyle(color: ColorManger.error),
        //enable style
        enabledBorder: OutlineInputBorder(
          borderSide:
                  BorderSide(color: ColorManger.primary,width: AppSize.s1),
          borderRadius: (const BorderRadius.all(Radius.circular(AppSize.s8)))),


        //focused border style
        focusedBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: ColorManger.primary, width: AppSize.s1),
          borderRadius:
              const BorderRadius.all(Radius.circular(AppSize.s8))),

        //error border style
        errorBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: ColorManger.error, width: AppSize.s1),
          borderRadius:
              const BorderRadius.all(Radius.circular(AppSize.s8))),
        focusedErrorBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: ColorManger.primary, width: AppSize.s1),
          borderRadius:
              const BorderRadius.all(Radius.circular(AppSize.s8))),
        ),
      );






}