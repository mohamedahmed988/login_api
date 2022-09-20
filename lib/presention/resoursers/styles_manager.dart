import 'package:flutter/material.dart';
import 'font_manager.dart';

TextStyle _getTextStyle(double fontSize, FontWeight fontWeight, Color color) {
  return TextStyle(

      fontSize: fontSize,
      color: color,
      fontFamily: FontConstant.fontFamily,
      fontWeight: fontWeight);
}
//Regular style

 TextStyle getRegularStyle(


    {double fontSize= FontSize.s12,required Color color}) {
  return _getTextStyle(fontSize, FontWeightManger.regular,color);

 }
  //Bold Style

TextStyle getBoldStyle(


    {double fontSize= FontSize.s12,required Color color}) {
  return _getTextStyle(fontSize, FontWeightManger.Bold,color);

}
 //Demi Bold Style

TextStyle getDemiBoldStyle(


    {double fontSize= FontSize.s12,required Color color}) {
  return _getTextStyle(fontSize, FontWeightManger.demiBold,color);

}




