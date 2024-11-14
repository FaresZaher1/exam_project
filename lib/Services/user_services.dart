import 'package:dio/dio.dart';
import 'package:faresmohamed_0522031/Models/user_model.dart';

class userserv
{
  static Dio dio = Dio();
  static Future<void> signup(name , phonenumber , email , password) async
  {
    Response res =await dio.post('https://student.valuxapps.com/api/register' ,
        data:
        {
          'name' : name,
          'phone' : phonenumber,
          'email' : email,
          'password' : password
        }
    );
    print(res.data);
  }
  static Future<usermod> Login(email , password) async
  {
    Response ress = await dio.post('https://student.valuxapps.com/api/login' ,
        data:
        {
          'email' : email,
          'password' : password
        }
    );
    print(ress.data);
        return usermod.cons(ress.data);
  }
}