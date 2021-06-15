import 'package:flutter/material.dart';

import '../colors.dart';
class qrcodepage extends StatelessWidget {
  const qrcodepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.only(top: 20, left: 0),
      height: MediaQuery.of(context).size.height /1.3,
      width: MediaQuery.of(context).size.width/1.0 ,
      child: Column(

          children: [
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(top: 10, left: 10),
              child: Text("Digital Member Card",style: page_textstyle,),
            ),
            Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.width/3)),

            Container(
              width: 300,
              height: 300,
              color: Colors.white,
              child: ClipRRect(

                borderRadius: BorderRadius.all(
                    Radius.circular(15)),
                child: Image.asset('assets/images/qrcode/sampleqr.png',fit: BoxFit.cover,
                ),


              ),
            ),
          ],
        ),

    );
  }
}
