
import 'package:flutter/material.dart';
import 'package:pixa/presention/login/login_view.dart';
import 'package:pixa/presention/resoursers/assets_manager.dart';
import 'package:pixa/presention/resoursers/color_manager.dart';
import 'package:pixa/presention/resoursers/font_manager.dart';


import '../resoursers/input_field.dart';


class OrdersView extends StatefulWidget {
  //const OrdersView({Key? key, required String accesstoken}) : super(key: key);

  @override
  State<OrdersView> createState() => _OrdersViewState();
}

class _OrdersViewState extends State<OrdersView> {
  @override
  Widget build(BuildContext context) =>Container(
      child: Scaffold(
          appBar: AppBar(
              leading: IconButton( //menu icon button at start left of appbar
                onPressed: (){
                  //code to execute when this button is pressed
                },
                icon: Icon(Icons.menu,color: Colors.grey,),
              ),

              elevation: 0.0,//appbar widget on Scaffold
              title:
              Text("Orders",style: TextStyle(color: Colors.black,fontFamily: FontConstant.fontFamily,fontWeight: FontWeight.w300,fontSize: 18,),), //title aof appbar
              backgroundColor: Colors.white,
              actions: [
                IconButton(
                    icon: Icon(Icons.notifications_none,color: Colors.grey,),
                    onPressed: (){
                      //code to execute when this button is pressed
                    }
                )
              ]
          ),
          floatingActionButton:FloatingActionButton( //Floating action button on Scaffold
            onPressed: (){

              //code to execute on button press
            },
            child: Icon(Icons.add,color: ColorManger.green,),
            backgroundColor: Colors.white,
            //icon inside button
          ),
          body: Column(
              children: [


                Container(

                    width: double.infinity,
                    height: 50,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    //child: Padding(
                    padding: const EdgeInsets.all(10.0),

                    decoration: BoxDecoration(

                        border: Border.all(
                            color: ColorManger.silver, width: 1),


                        color: ColorManger.cloudyGray,
                        borderRadius: const BorderRadius.all(
                            Radius.circular(18))),

                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [


                          Text(
                            'Current Orders               ',
                            style: TextStyle(fontSize: 16.0,color:ColorManger.gray,
                              fontFamily: FontConstant.fontFamily,
                              fontWeight: FontWeightManger.regular,
                            ),

                          ),
                          Container(


                            padding: const EdgeInsets.all(5.0),
                            width: 120,
                            height:150,


                            decoration: BoxDecoration(


                                border: Border.all(
                                    color: ColorManger.green, width: 1),


                                color: ColorManger.green,

                                borderRadius: const BorderRadius.all(
                                    Radius.circular(11))),


                            //alignment: Alignment.center,

                            //margin: EdgeInsets.only(right: 40),

                            child: Text(

                              "Orders History",
                              style: TextStyle(fontSize: 15.0,color:Colors.white,
                                fontFamily: FontConstant.fontFamily,
                                fontWeight: FontWeightManger.regular,
                              ),


                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),


                        ]
                    )),
                Column(
                  children: [
                    Container(
                        width: double.infinity,
                        height:180 ,
                        margin: const EdgeInsets.symmetric(
                            horizontal:30, vertical: 15),
                        padding: const EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.white60, width: 1),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5,
                                  offset: Offset(0, 0)),
                            ],

                            color: Colors.white,
                            borderRadius: const BorderRadius.all(
                                Radius.circular(15))),


                        child: ListView(
                          padding:  EdgeInsets.symmetric(
                          ),



                          children:[ Container(
                            alignment: Alignment.topLeft,

                            child: Column(

                              children: [


                                Text

                                  (" Order#: 999012 "
                                    "",

                                  style: TextStyle(
                                    fontSize:FontSize.s14,

                                    color:Colors.black,
                                    fontFamily: FontConstant.fontFamily,
                                    fontWeight: FontWeightManger.Bold,
                                  ),


                                ),
                                Text("20- Dec-2020, 3:00 PM ",

                                  style: TextStyle(
                                    fontSize:FontSize.s11,

                                    color:Colors.grey,
                                    fontFamily: FontConstant.fontFamily,
                                    fontWeight: FontWeightManger.regular,
                                  ),

                                ),


                                Padding(padding: EdgeInsets.symmetric()),
                                Container(

                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Image.asset(ImageAssets.sony ,width: 80,height: 70,),


                                    //crossAxisAlignment: CrossAxisAlignment.start,

                            ]
                                  ),
                                  alignment: Alignment.topRight,
                                ),


                                //SizedBox(height: 10,),
                                //Container(

                                 // child: Text("20- Dec-2020, 3:00 PM ",

                                    //style: TextStyle(
                                      //fontSize:FontSize.s11,

                                      //color:Colors.grey,
                                     // fontFamily: FontConstant.fontFamily,
                                     // fontWeight: FontWeightManger.regular,
                        //),

                                 // ),
                                  //alignment: Alignment.topLeft,
                               // ),
                               SizedBox(height:0,),

                                Container(
                                  child: Text
                                    (" Estimated Delivery on 21 Dec ",

                                    style: TextStyle(
                                      fontSize:FontSize.s11,

                                      color:ColorManger.green,
                                      fontFamily: FontConstant.fontFamily,
                                      fontWeight: FontWeightManger.regular,
                                    ),


                                  ),



                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text
                                      (" Rating ",

                                      style: TextStyle(
                                        fontSize:FontSize.s11,

                                        color:ColorManger.gray,
                                        fontFamily: FontConstant.fontFamily,
                                        fontWeight: FontWeightManger.regular,
                                      ),
                                      


                                    ),
                                    Icon(Icons.star_border_purple500_outlined),
                                    Icon(Icons.star_border_purple500_outlined),
                                    Icon(Icons.star_border_purple500_outlined),
                                    Icon(Icons.star_border_purple500_outlined),
                                    Icon(Icons.star_border_purple500_outlined),
                                  ],
                                ),



                              ],
                              crossAxisAlignment: CrossAxisAlignment.start,
                            ),


                          ),

                        ]
                        )
                    ),

                  ],
                ),


                SizedBox(
                  height: 20,
                ),



                Column(
                  children: [
                    Container(
                        width: double.infinity,
                        height:180 ,
                        margin: const EdgeInsets.symmetric(
                            horizontal:30, vertical: 15),
                        padding: const EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.white60, width: 1),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5,
                                  offset: Offset(0, 0)),
                            ],

                            color: Colors.white,
                            borderRadius: const BorderRadius.all(
                                Radius.circular(15))),


                        child: ListView(
                            padding:  EdgeInsets.symmetric(
                            ),



                            children:[ Container(
                              alignment: Alignment.topLeft,

                              child: Column(

                                children: [


                                  Text

                                    (" Order#: 999012 "
                                      "",

                                    style: TextStyle(
                                      fontSize:FontSize.s14,

                                      color:Colors.black,
                                      fontFamily: FontConstant.fontFamily,
                                      fontWeight: FontWeightManger.Bold,
                                    ),


                                  ),
                                  Text("20- Dec-2020, 3:00 PM ",

                                    style: TextStyle(
                                      fontSize:FontSize.s11,

                                      color:Colors.grey,
                                      fontFamily: FontConstant.fontFamily,
                                      fontWeight: FontWeightManger.regular,
                                    ),

                                  ),


                                  Padding(padding: EdgeInsets.symmetric()),
                                  Container(

                                    child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Image.asset(ImageAssets.sony ,width: 80,height: 70,),


                                          //crossAxisAlignment: CrossAxisAlignment.start,

                                        ]
                                    ),
                                    alignment: Alignment.topRight,
                                  ),


                                  //SizedBox(height: 10,),
                                  //Container(

                                  // child: Text("20- Dec-2020, 3:00 PM ",

                                  //style: TextStyle(
                                  //fontSize:FontSize.s11,

                                  //color:Colors.grey,
                                  // fontFamily: FontConstant.fontFamily,
                                  // fontWeight: FontWeightManger.regular,
                                  //),

                                  // ),
                                  //alignment: Alignment.topLeft,
                                  // ),
                                  SizedBox(height:0,),

                                  Container(
                                    child: Text
                                      (" Estimated Delivery on 21 Dec ",

                                      style: TextStyle(
                                        fontSize:FontSize.s11,

                                        color:ColorManger.green,
                                        fontFamily: FontConstant.fontFamily,
                                        fontWeight: FontWeightManger.regular,
                                      ),


                                    ),



                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text
                                        (" Rating ",

                                        style: TextStyle(
                                          fontSize:FontSize.s11,

                                          color:ColorManger.gray,
                                          fontFamily: FontConstant.fontFamily,
                                          fontWeight: FontWeightManger.regular,
                                        ),



                                      ),
                                      Icon(Icons.star_border_purple500_outlined),
                                      Icon(Icons.star_border_purple500_outlined),
                                      Icon(Icons.star_border_purple500_outlined),
                                      Icon(Icons.star_border_purple500_outlined),
                                      Icon(Icons.star_border_purple500_outlined),
                                    ],
                                  ),



                                ],
                                crossAxisAlignment: CrossAxisAlignment.start,
                              ),


                            ),

                            ]
                        )
                    ),

                  ],
                ),




              ]
          )
      )

  );

}


