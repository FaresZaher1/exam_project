import 'package:faresmohamed_0522031/Models/product_model.dart';
import 'package:faresmohamed_0522031/Services/product_services.dart';
import 'package:flutter/material.dart';

class product_prov extends ChangeNotifier{
  productmod? obj;
  Future <void> fetchdata() async
  {
    obj = await prodserv.fetchdata();
    notifyListeners();
  }
}