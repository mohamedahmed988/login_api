import 'package:http/http.dart' as http;
import 'dart:convert';
import '../model/login_model.dart';

class APIService {
  Future<LoginResponseModel>(LoginRequestModel requestModel) async {
    var headers = {
      'Content-Type': 'application/json'
    };
    var request = http.Request(
        'POST', Uri.parse('https://api.aura.pixa-sa.com/api/Login'));
    var password;
    var Email;
    request.body = json.encode({
      "password": password,
      "UserType": 2,
      "Email": Email,
      "IpAddress": "1.1.1.1",
      "firebaseToken": "123456789",
      "Platform": 1
    });
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    }
    else {
      print(response.reasonPhrase);
    }
  }

  login(LoginRequestModel loginRequestModel) {}
}
