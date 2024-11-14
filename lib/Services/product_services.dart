import 'package:dio/dio.dart';
import 'package:faresmohamed_0522031/Models/product_model.dart';

class prodserv{
  static Dio dio = Dio();
  static Future <productmod> fetchdata() async
  {
    Response res =await dio.get('https://student.valuxapps.com/api/home');
    return productmod.con(res.data);
  }

}