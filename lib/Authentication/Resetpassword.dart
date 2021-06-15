import 'package:flutter/material.dart';
import 'package:quikie_demo_application/Authentication/login.dart';
import '../colors.dart';
class reset_password extends StatefulWidget {
  const reset_password({Key? key}) : super(key: key);

  @override
  _reset_passwordState createState() => _reset_passwordState();
}

class _reset_passwordState extends State<reset_password> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: body_color,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 60.0),
                child: Center(
                  child: Container(
                      width: 200,
                      height: 150,
                      decoration: BoxDecoration(
                        shape:BoxShape.circle,
                        border: Border.all(
                            width: 2,
                            color: Colors.white
                        ),
                      ),
                      child: Image.asset('assets/images/logo.png')),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:15.0,right: 15.0,top:80.0,bottom:0),

                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Reset Password",style: TextStyle(fontSize: 35,color: Colors.white),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 60,left:20.0,right: 20.0),
                child: Text(
                  "Email address verified set your password",style: TextStyle(
                  fontSize: 14,color: Colors.white,
                ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:15.0,right: 15.0,top:20.0,bottom:20),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      labelText: 'New Password',
                      hintText: 'Enter New Password'),

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:15.0,right: 15.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      labelText: 'Re-New Password',
                      hintText: 'Re-New Password'),

                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left:15.0,right: 15.0,top:100.0),
              ),
              Container(
                height: 50,
                width: 350,
                decoration: BoxDecoration(

                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.blue,
                        Colors.lightBlueAccent,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(20)),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => login()));
                  },
                  child: Text(
                    'Reset Password',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              FlatButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => login()));
                },
                child:Text('Have an account ? login',
                  style: TextStyle(color: Colors.white, fontSize: 15),

                ),
              ),            ],
          ),
        ),
      ),
    );
  }
}
