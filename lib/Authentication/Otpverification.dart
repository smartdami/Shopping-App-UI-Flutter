import 'package:flutter/material.dart';
import 'package:quikie_demo_application/Authentication/Resetpassword.dart';
import 'package:quikie_demo_application/Authentication/login.dart';
import 'package:otp_text_field/otp_text_field.dart';


import '../colors.dart';

class otpvarification extends StatefulWidget {
  const otpvarification({Key? key}) : super(key: key);

  @override
  _otpvarificationState createState() => _otpvarificationState();
}

class _otpvarificationState extends State<otpvarification> {

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
                        shape: BoxShape.circle,
                        border: Border.all(width: 2, color: Colors.white),
                      ),
                      child: Image.asset('assets/images/logo.png')),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 80.0, bottom: 0),

                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Verification",
                  style: TextStyle(fontSize: 35, color: Colors.white),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 60, left: 20.0, right: 20.0),
                child: Text(
                  "We have sent to you  a verification code to your email ID",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 20.0, bottom: 40),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: OTPTextField(
                  length: 4,
                  width: MediaQuery.of(context).size.width,
                  textFieldAlignment: MainAxisAlignment.spaceAround,
                  fieldWidth: 55,

                  otpFieldStyle:OtpFieldStyle(
                      backgroundColor: Colors.white
                  ),
                  outlineBorderRadius: 15,
                  style: TextStyle(fontSize: 25,color: Colors.black),
                  onChanged: (pin) {

                    print("Changed: " + pin);
                  },
                  onCompleted: (pin) {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => reset_password()));
                  },
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, right: 15.0, top: 100.0),
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
                    Navigator.push(context, MaterialPageRoute(builder: (_) => reset_password()));
                  },
                  child: Text(
                    'Verify',
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
                child: Text(
                  'Have an account ? login',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void moveToNextScreen(Context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => reset_password()));
  }
}
