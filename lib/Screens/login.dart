import 'package:faresmohamed_0522031/Provider/user_provider.dart';
import 'package:faresmohamed_0522031/Screens/homepage.dart';
import 'package:faresmohamed_0522031/Screens/register.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class login extends StatelessWidget {
  var name = TextEditingController();
  var phonenumber = TextEditingController();
  var email = TextEditingController();
  var password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var p = Provider.of<userprov>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings)
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.grey,
            radius: 85,
            child:
            Icon(Icons.shopping_cart , size: 100, ),
          ),
          SizedBox(height: 50,),
          TextFormField(
            controller: email,
            decoration: InputDecoration(
                label: Text('Your Email'),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)
                )
            ),
          ),
          SizedBox(height: 15,),
          TextFormField(
            controller: password,
            decoration: InputDecoration(
                label: Text('Your Password'),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)
                )
            ),
          ),
          ElevatedButton(onPressed: (){
            if(p.obj == null)
              {
                p.loginn(email.text, password.text);
              }
            if(p.obj?.status == true)
              {
                Navigator.push(context, MaterialPageRoute(builder: (context) => homepage(),));
              }
          }, child:
              Text('Login')
          ),
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => register(),));
          }, child: Text('Dont Have An Account ? Signup'))
        ],
      ),
    );
  }
}
