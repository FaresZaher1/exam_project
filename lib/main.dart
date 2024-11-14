import 'package:faresmohamed_0522031/Provider/product_provider.dart';
import 'package:faresmohamed_0522031/Provider/user_provider.dart';
import 'package:faresmohamed_0522031/Screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Screens/register.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers : [
      ChangeNotifierProvider(create: (context) => product_prov(),),
      ChangeNotifierProvider(create: (context) => userprov(),)
    ],
    child:  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: homepage()
    )
    );
  }
}