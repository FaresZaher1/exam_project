import 'package:faresmohamed_0522031/Models/user_model.dart';
import 'package:faresmohamed_0522031/Services/user_services.dart';
import 'package:flutter/cupertino.dart';

class userprov extends ChangeNotifier
{
  usermod? obj;
  Future <void>signup(name , password , email , phone) async
  {
     await userserv.signup(name , password , email , phone);
    notifyListeners();
  }

  Future <void> loginn(email, password) async
  {
    obj =await userserv.Login(email, password);
    notifyListeners();
  }
}