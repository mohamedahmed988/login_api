
import 'package:flutter/material.dart';
import 'package:pixa/presention/orders/orders_view.dart';
import '../../api/user_auth.dart';
import '../../provider/login_provider.dart';
import '../resoursers/assets_manager.dart';
import '../resoursers/color_manager.dart';
import '../resoursers/font_manager.dart';
import '../resoursers/values_manger.dart';
import 'package:provider/provider.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  String errorString = "";

  bool isChecked = false;
  bool value = false;



  late LoginProvider loginProvider;

  @override
  Widget build(BuildContext context) {
    loginProvider = Provider.of<LoginProvider>(context);
    if (loginProvider.state == LoginViewState.initial)
      return _buildLoginScreen();
    else if (loginProvider.state == LoginViewState.loading)
      return Center(
        child: CircularProgressIndicator(),
      );
    else if (loginProvider.state == LoginViewState.error) {
      errorString = loginProvider.errorMessage;
      return _buildLoginScreen();
    } else
      return OrdersView();
  }



  // _LoginViewState(email, String text);
  //_LoginViewState(password, int text);





  @override
  Widget _buildLoginScreen() =>Container(


          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage(ImageAssets.splashBg2),
              fit: BoxFit.cover,
            ),
          ),
          child: Scaffold(
              backgroundColor: Colors.transparent,
              body: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(ImageAssets.splashBg2),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Scaffold(
                      backgroundColor: Colors.transparent,
                      body: Center(
                          child: SingleChildScrollView(
                            child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .width,
                                child: Column(
                                    children:
                                    [
                                      const SizedBox(height: 110,),
                                      Image.asset(
                                        ImageAssets.splashlogo2, width: 127,),
                                      SizedBox(height: AppSize.s31,),
                                      Text("Welcome Back",
                                        style: TextStyle(
                                          fontSize: FontSize.s25,
                                          fontWeight: FontWeightManger.regular,
                                          color: ColorManger.silver,
                                          fontFamily: FontConstant.fontFamily,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 214,
                                        height: 0,
                                      ),
                                      Text("Log in to existant account of Pixa",
                                        style: TextStyle(
                                          fontSize: FontSize.s12,

                                          color: ColorManger.darkGray,
                                          fontFamily: FontConstant.fontFamily,
                                          fontWeight: FontWeightManger.Bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                          width: double.infinity,
                                          height: 50,
                                          margin: const EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 10),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 5),
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.white60,
                                                  width: 1),
                                              boxShadow: const [
                                                BoxShadow(
                                                    color: Colors.grey,
                                                    blurRadius: 10,
                                                    offset: Offset(1, 1)),
                                              ],
                                              color: Colors.white,
                                              borderRadius: const BorderRadius
                                                  .all(
                                                  Radius.circular(15))),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment
                                                .start,
                                            children: [

                                              const Icon(IconManager.email),
                                              Expanded(

                                                child: Container(
                                                  margin: const EdgeInsets.only(
                                                      left: 10),
                                                  child: TextFormField(


                                                    controller: _emailController,
                                                    decoration: InputDecoration(
                                                      labelText: " Email",
                                                      border: OutlineInputBorder(),


                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )),
                                      SizedBox(
                                        height: 0,
                                      ),
                                      Container(
                                          width: double.infinity,
                                          height: 50,
                                          margin: const EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 10),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 5),
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.white60,
                                                  width: 1),
                                              boxShadow: const [
                                                BoxShadow(
                                                    color: Colors.grey,
                                                    blurRadius: 10,
                                                    offset: Offset(1, 1)),
                                              ],
                                              color: Colors.white,
                                              borderRadius: const BorderRadius
                                                  .all(
                                                  Radius.circular(15))),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment
                                                .start,
                                            children: [
                                              const Icon(IconManager.password0),


                                              Expanded(
                                                child: Container(
                                                  margin: const EdgeInsets.only(
                                                      left: 10),
                                                  child: TextFormField(
                                                    controller: _passwordController,
                                                    obscureText: true,
                                                    decoration: InputDecoration(
                                                      labelText: " PassWord",
                                                      border: OutlineInputBorder(),
                                                      suffixIcon: Icon(
                                                          IconManager.show),
                                                      //border: InputBorder.none,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )),
                                      SizedBox(
                                        height: 5
                                        ,
                                      ),
                                      //SizedBox(height: 10),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment
                                            .start,
                                        children: <Widget>[
                                          SizedBox(
                                            width: 10,
                                          ), //SizedBox

                                          SizedBox(width: 10), //SizedBox
                                          /** Checkbox Widget **/
                                          Checkbox(
                                            value: this.value,
                                            onChanged: (value) {
                                              setState(() {
                                                this.value = value!;
                                              }

                                              );
                                            },

                                          ),
                                          Text(
                                            'Remember me               ',
                                            style: TextStyle(
                                              fontSize: 15.0,
                                              color: ColorManger.darkGray,
                                              fontFamily: FontConstant
                                                  .fontFamily,
                                              fontWeight: FontWeightManger
                                                  .regular,
                                            ),

                                          ),
                                          Container(
                                            //alignment: Alignment.center,

                                            //margin: EdgeInsets.only(right: 40),
                                            child: InkWell(
                                              onTap: () {},
                                              child: Text(
                                                "Forgot Password?",
                                                style: TextStyle(
                                                    color: ColorManger.green,
                                                    fontWeight: FontWeight
                                                        .w500),
                                              ),
                                            ),
                                          ), //Text//Checkbox
                                        ], //<Widget>[]
                                      ),

                                      SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                          alignment: Alignment.center,
                                          width: double.infinity,
                                          //height: ,
                                          margin: const EdgeInsets.symmetric(
                                              horizontal: 0, vertical: 0),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 0, vertical: 0),
                                          decoration: const BoxDecoration(
                                            //color: Color(0xff2C4495),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(12)),
                                          ),
                                          child: Column(

                                              children: [
                                                ElevatedButton(




                                                  onPressed: () {
                                                    String username = _emailController.text;
                                                    String password = _passwordController.text;
                                                    loginProvider.login(username, password);
                                                    UsersAuthAPI().login(username,password);




                                                  },
                                                  child: const Text("login",
                                                    style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight: FontWeight
                                                          .bold,
                                                      color: Colors.black45,

                                                    ),
                                                  ),
                                                ),


                                                SizedBox(
                                                  height: 20,

                                                ),

                                                Container(
                                                  child: const Text(
                                                      "Choose Language",
                                                      style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 20,
                                                        fontFamily: FontConstant
                                                            .fontFamily,
                                                        fontWeight: FontWeightManger
                                                            .demiBold,
                                                      )),
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Wrap(

                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets
                                                          .only(
                                                          left: 20.0,
                                                          right: 10.0,
                                                          top: 15.0),
                                                      child: Container(
                                                        decoration: BoxDecoration(
                                                            boxShadow: <
                                                                BoxShadow>[
                                                              BoxShadow(
                                                                  color: Colors
                                                                      .grey,
                                                                  //Color(0xfff05945),
                                                                  offset: const Offset(
                                                                      0, 0),
                                                                  blurRadius: 5.0),
                                                            ],
                                                            color: Colors.white,
                                                            borderRadius: BorderRadius
                                                                .circular(
                                                                12.0)),
                                                        width: 100,
                                                        height: 45,
                                                        child: Material(
                                                          borderRadius: BorderRadius
                                                              .circular(12.0),
                                                          child: InkWell(
                                                              onTap: () {
                                                                print(
                                                                    "English");
                                                              },
                                                              //child: Padding(
                                                              //padding: const EdgeInsets.all(8.0),
                                                              child: Row(
                                                                  mainAxisAlignment: MainAxisAlignment
                                                                      .center,
                                                                  children: [

                                                                    SizedBox(
                                                                      width: 7.0,
                                                                    ),
                                                                    Container(
                                                                        alignment: Alignment
                                                                            .center,
                                                                        child:

                                                                        Text(
                                                                          "English",
                                                                          style: TextStyle(
                                                                            fontSize: 15,
                                                                            fontFamily: FontConstant
                                                                                .fontFamily,
                                                                            fontWeight: FontWeightManger
                                                                                .regular,),
                                                                        )
                                                                    )
                                                                  ]
                                                              )
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    //),
                                                    Padding(
                                                      padding: const EdgeInsets
                                                          .only(
                                                          left: 10.0,
                                                          right: 30.0,
                                                          top: 15.0),
                                                      child: Container(
                                                        decoration: BoxDecoration(
                                                            boxShadow: <
                                                                BoxShadow>[
                                                              BoxShadow(
                                                                  color: Colors
                                                                      .grey,
                                                                  //Color(0xfff05945),
                                                                  offset: const Offset(
                                                                      0, 0),
                                                                  blurRadius: 5.0),
                                                            ],
                                                            color: Colors.white,
                                                            borderRadius: BorderRadius
                                                                .circular(
                                                                12.0)),
                                                        width: 101,
                                                        height: 45,
                                                        child: Material(
                                                          borderRadius: BorderRadius
                                                              .circular(13.0),
                                                          child: InkWell(
                                                            onTap: () {
                                                              print("عربي ");
                                                            },
                                                            //child: Padding(
                                                            //padding: const EdgeInsets.all(8.0),
                                                            child: Row(
                                                              mainAxisAlignment: MainAxisAlignment
                                                                  .center,
                                                              children: [

                                                                SizedBox(
                                                                  width: 7.0,
                                                                ),
                                                                Text("عربي ",
                                                                  style: TextStyle(
                                                                    fontFamily: FontConstant
                                                                        .fontFamily0,
                                                                  ),)
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    //),
                                                  ],
                                                ),


                                              ]))
                                    ])),
                          ))
                  )


              )
          )
      );

}

class LoginScreenState {

}






class IconManager {
  static const _kFontFam = 'MyFlutterApp';


  static const IconData email = IconData(0xe802, fontFamily: _kFontFam, );
  static const IconData password0 = IconData(0xe803, fontFamily: _kFontFam, );
  static const IconData bell = IconData(0xe806, fontFamily: _kFontFam, );
  static const IconData add1 = IconData(0xe808, fontFamily: _kFontFam, );
  static const IconData show = IconData(0xe80a, fontFamily: _kFontFam, );

}

