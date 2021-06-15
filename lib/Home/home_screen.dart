import 'package:flutter/material.dart';
import 'package:quikie_demo_application/Home/shopping_item.dart';
import 'package:quikie_demo_application/QR/qr_code.dart';
import 'package:quikie_demo_application/Ranking/ranking.dart';
import 'package:quikie_demo_application/Redeem/redeem.dart';
import 'package:quikie_demo_application/colors.dart';

class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  _homescreenState createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  int _currentIndex = 0;
  final List<Widget> _children = [
    shoppingitem(),
    qrcodepage(),
    ranking(),
    redeempoints(),
  ];

  void onTabTapped(int index) {
    setState(
      () {
        _currentIndex = index;
      },
    );
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: body_color,
        bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped, // new
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: new Icon(
                Icons.view_compact_sharp,
              ),
              label: 'Home',
              backgroundColor: bottomnav_color,
            ),
            BottomNavigationBarItem(
                icon: new Icon(Icons.qr_code_sharp),
                label: 'QR Code',
                backgroundColor: bottomnav_color),
            BottomNavigationBarItem(
                icon: new Icon(Icons.wallet_giftcard),
                label: 'Ranking',
                backgroundColor: bottomnav_color),
            BottomNavigationBarItem(
              icon: new Icon(Icons.shopping_cart),
              backgroundColor: bottomnav_color,
              label: 'Cart',
            ),
          ],
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  gradient: appbar_color,
                ),
                height: 100,
                child: Row(
                  children: [
                    Padding(padding: EdgeInsets.only(top:10,left:15)),
                    Container(
                      height: 70,
                      width: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: new AssetImage("assets/images/download.jpg"),
                            fit: BoxFit.fill),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 40)),
                    Text("Damien", style: page_textstyle),
                    Padding(padding: EdgeInsets.only(right: 60)),
                    Container(
                      padding: EdgeInsets.only(top: 30,left: 40),
                      child: Column(
                        children: [
                          Text("Points", style: TextStyle(fontSize: 15,color: Colors.white)),
                          Padding(padding: EdgeInsets.only(top: 10)),
                          Text("50", style: page_textstyle),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
              Container(
                child: _children[_currentIndex],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
