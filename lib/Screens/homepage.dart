import 'package:faresmohamed_0522031/Provider/product_provider.dart';
import 'package:faresmohamed_0522031/Screens/productdetails.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//jhjh
class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var p = Provider.of<product_prov>(context);
    p.fetchdata();
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemCount: p.obj?.data.length,
            itemBuilder: (context, i) {
          return Container(
            child:
            GestureDetector(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(p.obj?.data[i]['image']),
                  SizedBox(height: 15,),
                  Text(p.obj?.data[i]['name']),
                  SizedBox(height: 15,),
                  Text((p.obj?.data[i]['price']).toString())
                ],
              ),
              onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context) => productdetails(name: p.obj?.data[i]['name'], image: p.obj?.data[i]['image'], discreption: p.obj?.data[i]['description'], price: p.obj?.data[i]['price']),));
              },
            )
            ,
          );
            },
        ),

      );
    ////xxxxddd   n

  }
}
