import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quikie_demo_application/colors.dart';

class productdetails extends StatelessWidget {
  final String prodthumbnail;

  const productdetails({Key? key, required this.prodthumbnail})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bottomnav_color,
        body: Container(
          child: Column(
            children: [
              prodimage(
                prodthumbnail: prodthumbnail,
              ),
              Padding(padding: EdgeInsets.only(top:30)),
              Container(

                alignment: Alignment.topLeft,
                padding:  EdgeInsets.only(top: 20,left: 70),
                height: MediaQuery.of(context).size.height/15,
                  width: MediaQuery.of(context).size.width/1.15,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                  child:  Row(children: [
                    Image.asset("assets/images/lbutton.jpg"),
                    Padding(padding: EdgeInsets.only(right: 80)),
                    Image.asset("assets/images/dlbtn.png"),
                  ],)

              ),
              Padding(padding: EdgeInsets.only(top:30)),
              prodvideo(prodimage: prodthumbnail,),

            ],
          ),
        ),
      ),
    );
  }
}

class prodimage extends StatelessWidget {
  final String prodthumbnail;
  const prodimage({Key? key, required this.prodthumbnail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.bottomCenter, children: [
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 2,
        decoration: BoxDecoration(
            image: new DecorationImage(
                image: new AssetImage(prodthumbnail), fit: BoxFit.cover)),
      ),
      Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0x00f5f5f5), Color(0xfff5f5f5)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        height: MediaQuery.of(context).size.height / 3.5,
      ),
      Padding(padding: EdgeInsets.only(left:20,bottom:30),
        child: Text("Puma Descripton page of Puma",style: TextStyle(
          fontSize: 20,
          color: bottomnav_color
        ),),
      ),
      Padding(padding: EdgeInsets.only(bottom:60),
        child: Text("Puma",style: TextStyle(
            fontSize: 35,
            color: bottomnav_color
        ),),
      ),

    ]);
  }
}
class prodvideo extends StatelessWidget {
  final String prodimage;
  const prodvideo({Key? key,required this.prodimage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
    Stack(
    alignment: Alignment.center,
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width/1.15,
          height: MediaQuery.of(context).size.height/3.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage(prodimage),
                  fit: BoxFit.cover)
          ),
        ),
        Icon(Icons.play_circle_outline, size: 100,
          color: Colors.white,)
      ],

    ),
    ],
    );
  }
}

