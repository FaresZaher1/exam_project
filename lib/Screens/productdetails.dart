import 'package:faresmohamed_0522031/Screens/homepage.dart';
import 'package:flutter/material.dart';

class productdetails extends StatelessWidget {
  var image;
  var name ;
  var price;
  var discreption;
  productdetails({required this.name , required this.image , required this.discreption , required this.price});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(image),
          Text(name),
          Text((price).toString()),
          Text(discreption),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => homepage(),));
          }, child: Text('Back'))
        ],
      ),
    );
  }
}
