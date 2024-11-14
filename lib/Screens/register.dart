import 'package:faresmohamed_0522031/Provider/user_provider.dart';
import 'package:faresmohamed_0522031/Screens/login.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class register extends StatelessWidget {
  var name = TextEditingController();
  var phonenumber = TextEditingController();
  var email = TextEditingController();
  var password = TextEditingController();
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var p = Provider.of<userprov>(context);
    return Scaffold(
      appBar:
      AppBar(
        title: Text('Signup'),
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings)
        ],
      ),
      body: Form(
        key: formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: name,
              validator:(x)
              {
                if(x == null || x.isEmpty || x.length < 8)
                  {
                    return 'Null Not Accepted , Mini Length is 8';
                  }
              },
              decoration: InputDecoration(
                label: Text('Your Name'),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15)
                )
              ),
            ),
            SizedBox(height: 15,),
            TextFormField(
              controller: email,
              validator:(x)
              {
                if(x == null || x.isEmpty || x.length < 8)
                {
                  return 'Null Not Accepted , Mini Length is 8';
                }
              },
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
              validator:(x)
              {
                if(x == null || x.isEmpty || x.length < 8)
                {
                  return 'Null Not Accepted , Mini Length is 8';
                }
              },
              decoration: InputDecoration(
                  label: Text('Your Password'),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)
                  )
              ),
            ),
            SizedBox(height: 15,),
            TextFormField(
              controller: phonenumber,
              validator:(x)
              {
                if(x == null || x.isEmpty || x.length < 8)
                {
                  return 'Null Not Accepted , Mini Length is 8';
                }
              },
              decoration: InputDecoration(
                  label: Text('Your Phone Number'),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)
                  )
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              if(formkey.currentState!.validate())
                {
                  p.signup(name.text, phonenumber.text, email.text, password.text);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => login(),));
                }
            }, child: Text('Signup')
            ),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => login(),));

            }, child: Text('Already Have An Account ? Login'))
          ],
        ),
      )
    );
  }
}
