import 'package:flutter/cupertino.dart';

import '../api/api_result.dart';
import '../api/user_auth.dart';
import '../models/api_model.dart';

enum LoginViewState{initial, loading, loaded, error}
class LoginProvider with ChangeNotifier{

  LoginViewState state = LoginViewState.initial;
  late User user;
  late APIResult apiResult;
  late String errorMessage;

  login(userName, password)async{
    setState(LoginViewState.loading);
    apiResult = await UsersAuthAPI().login(userName, password);

    if(!apiResult.hasError){
      user = apiResult.data;
      setState( LoginViewState.loaded);

    }else{
      errorMessage = apiResult.failure.message;
      setState( LoginViewState.error);

    }
  }

  setState(state){
    this.state = state;
    notifyListeners();
  }

}