import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/io_client.dart';
import 'package:http/http.dart' as http;
import '../app_constants.dart';
import '../model/user_response.dart';
import '../presention/orders/orders_view.dart';
import 'api_constant.dart';
import 'api_response.dart';
import 'api_result.dart';


class UsersAuthAPI {
  var convert;



  Future<APIResult> login(String userName, String password) async {
    var url = APIConstants.BASE_URL+'/login';

    http.Response response;
    var jsonResponse;

    APIResult result = APIResult();

    UserResponse userResponse;

    Map<String, dynamic> bodyData = {
      'username': userName,
      'password': password,
      "UserType" :2,
      "IpAddress": "1.1.1.1",
      "firebaseToken":"123456789",
      "Platform":1
    };

    try {
      HttpClient client = new HttpClient();
      client.badCertificateCallback =
      ((X509Certificate cert, String host, int port) => true);

      IOClient ioClient = IOClient(client);

      response = await ioClient.post(Uri(),
          headers: {
            HttpHeaders.contentTypeHeader: "application/json",
          },
          body: convert.jsonEncode(bodyData));

      if (response.statusCode == AppConstants.RESPONSE_CODE_SUCCESS) {

        var convert;
        jsonResponse = convert.jsonDecode(response.body);

        userResponse = UserResponse.fromJson(jsonResponse);
        Navigator.push(
            convert, MaterialPageRoute(builder: (context) => OrdersView()));


        //print("Token: " + userResponse.metaData.accessToken);

        //SharedPreferences prefs = await SharedPreferences.getInstance();
        //prefs.setString(AppConstants.KEY_ACCESS_TOKEN, userResponse.metaData.accessToken);

        result.hasError = false;
        result.data = userResponse.data;
      } else {
        jsonResponse = convert.jsonDecode(response.body);
        userResponse = UserResponse.fromJson(jsonResponse);


        result.hasError = true;

      }
    } catch (ex) {
      result = APIResponseErrorHandler.parseError(ex);
    }

    print(result.data);
    return result;
  }
}

class SharedPreferences {
  static getInstance() {}
}