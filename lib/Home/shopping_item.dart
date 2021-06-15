import 'package:flutter/material.dart';
import 'package:quikie_demo_application/Home/ProductDetails.dart';

import '../colors.dart';

class shoppingitem extends StatefulWidget {
  const shoppingitem({Key? key}) : super(key: key);

  @override
  _shoppingitemState createState() => _shoppingitemState();
}

class _shoppingitemState extends State<shoppingitem> {
  @override
  List<String> productimages = [
    "assets/images/Products/shoe1_back.png",
    "assets/images/Products/shoe1_front.jpg",
    "assets/images/Products/shoe2_back.png",
    "assets/images/Products/shoe2_front.jpg",
  ];

  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.only(top: 20, left: 0),
      height: MediaQuery.of(context).size.height / 1.35,
      width: MediaQuery.of(context).size.width / 1.05,
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(top: 10, left: 10),
            child: Text(
              "News",
              style: page_textstyle,
            ),
          ),
          Expanded(
            child: Container(

              padding: EdgeInsets.only(top: 10),
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: productimages.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: (MediaQuery.of(context).size.width /
                      (MediaQuery.of(context).size.height / 3.5)),
                  // crossAxisSpacing: 1.0,
                  //mainAxisSpacing: 1.0,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    child: Card(
                      color: card_color,
                      elevation: 20,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 1.03,
                            height: MediaQuery.of(context).size.height / 1.8,
                            color: Colors.white,
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              child: Image.asset(
                                productimages[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          Container(
                            alignment:Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:EdgeInsets.only(top:20) ,
                                  ),
                                  Text("Puma",style: page_textstyle,),
                                  Padding(
                                    padding:EdgeInsets.only(top: 10,) ,
                                  ),
                                  Text("Sample Data of this UI Development",style:TextStyle(fontSize: 15,color: Colors.white,),),


                                ]
                            ),

                          )
                        ],
                      ),

                    ),
                    onTap: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              productdetails(prodthumbnail: productimages[index],),),),
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
