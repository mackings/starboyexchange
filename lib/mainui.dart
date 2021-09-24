// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:starboyexchange/account1.dart';
import 'package:starboyexchange/helpandsupport.dart';
import 'package:starboyexchange/login.dart';
import 'package:starboyexchange/news.dart';
import 'package:starboyexchange/notifications.dart';
import 'package:starboyexchange/profile.dart';
import 'package:starboyexchange/settings.dart';
import 'package:starboyexchange/trade1.dart';
import 'package:starboyexchange/withdraw.dart';

import 'history.dart';

class Mainui extends StatefulWidget {
  const Mainui({Key ?key}) : super(key: key);

  @override
  _MainuiState createState() => _MainuiState();
}

class _MainuiState extends State<Mainui> {
  final GlobalKey<ScaffoldState> _globalKey= GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        key: _globalKey,
        drawer: Drawer(
          child: ListView(
            children: [
              Container(
                  width: 231,
                  height: 812,
                  decoration: const BoxDecoration(
                    color : Color.fromRGBO(81, 163, 163, 1),
                  ),
                  child: Stack(
                      children: <Widget>[
                        Positioned(
                            top: 72,
                            left: 78.3457260131836,
                            child: Container(
                                width: 80,
                                height: 80,
                                decoration: BoxDecoration(
                                  border : Border.all(
                                    color: Color.fromRGBO(81, 163, 163, 1),
                                    width: 1,
                                  ),
                                  image : DecorationImage(
                                      image: AssetImage('assets/signat.png'),
                                      fit: BoxFit.fitWidth
                                  ),
                                  borderRadius : BorderRadius.all(Radius.elliptical(80, 80)),
                                )
                            )
                        ),Positioned(
                            top: 237,
                            left: 58.345726013183594,
                            child: Row(
                              children: [
                                Icon(Icons.person,color: Colors.white,),
                                SizedBox(
                                  width: 5,
                                ),
                                InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
                                  },
                                  child: Text('Profile', textAlign: TextAlign.left, style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontFamily: 'Montserrat',
                                      fontSize: 14,
                                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1
                                  ),),
                                ),
                              ],
                            )
                        ),Positioned(
                            top: 272,
                            left: 58.345726013183594,
                            child: Row(
                              children: [
                                Icon(Icons.account_balance,color: Colors.white,),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('Account Details', textAlign: TextAlign.left, style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Montserrat',
                                    fontSize: 14,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1
                                ),),
                              ],
                            )
                        ),Positioned(
                            top: 307,
                            left: 58.345726013183594,
                            child: Row(
                              children: [
                                Icon(Icons.notifications_active,color: Colors.white,),
                                SizedBox(
                                  width: 5,
                                ),
                                InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Notifications()));
                                  },
                                  child: Text('Notifications', textAlign: TextAlign.left, style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontFamily: 'Montserrat',
                                      fontSize: 14,
                                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1
                                  ),),
                                ),
                              ],
                            )
                        ),Positioned(
                            top: 342,
                            left: 58.345726013183594,
                            child: Row(
                              children: [
                                Icon(Icons.help,color: Colors.white,),
                                SizedBox(
                                  width: 5,
                                ),
                                InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Helpandsupport()));
                                  },
                                  child: Text('Help and Support', textAlign: TextAlign.left, style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontFamily: 'Montserrat',
                                      fontSize: 14,
                                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1
                                  ),),
                                ),
                              ],
                            )
                        ),
                        Positioned(
                            top: 377,
                            left: 58.345726013183594,
                            child: Row(
                              children: [
                                Icon(Icons.settings,color: Colors.white,),
                                SizedBox(
                                  width: 5,
                                ),
                                InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Settings()));
                                  },
                                  child: Text('Settings', textAlign: TextAlign.left, style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontFamily: 'Montserrat',
                                      fontSize: 14,
                                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1
                                  ),),
                                ),
                              ],
                            )
                        ),

                        SizedBox(
                          height: 10,
                        ),

                        Positioned(
                            top: 410,
                            left: 58.345726013183594,
                            child: Row(
                              children: [
                                Icon(Icons.my_library_books,color: Colors.white,),
                                SizedBox(
                                  width: 5,
                                ),
                                InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>News()));
                                  },
                                  child: Text('News', textAlign: TextAlign.left, style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontFamily: 'Montserrat',
                                      fontSize: 14,
                                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1
                                  ),),
                                ),
                              ],
                            )
                        ),

                        Positioned(
                            top: 447,
                            left: 40.345726013183594,
                            child: Container(
                                width: 156.1904754638672,
                                height: 40,

                                child: Stack(
                                    children: <Widget>[
                                      Positioned(
                                          top: 0,
                                          left: 0,
                                          child: InkWell(
                                            onTap: (){
                                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                                            },
                                            child: Container(
                                                width: 156.1904754638672,
                                                height: 40,
                                                decoration: BoxDecoration(
                                                  borderRadius : BorderRadius.only(
                                                    topLeft: Radius.circular(5),
                                                    topRight: Radius.circular(5),
                                                    bottomLeft: Radius.circular(5),
                                                    bottomRight: Radius.circular(5),
                                                  ),
                                                  color : Color.fromRGBO(13, 14, 14, 1),
                                                ),
                                                child: Stack(
                                                    children: <Widget>[
                                                      Positioned(
                                                          top: 11,
                                                          left: 43,
                                                          child: Text('LOG OUT', textAlign: TextAlign.left, style: TextStyle(
                                                              color: Color.fromRGBO(255, 255, 255, 1),
                                                              fontFamily: 'Montserrat',
                                                              fontSize: 14,
                                                              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                              fontWeight: FontWeight.normal,
                                                              height: 1
                                                          ),)
                                                      ),
                                                    ]
                                                )
                                            ),
                                          )
                                      ),
                                    ]
                                )
                            )
                        ),Positioned(
                            top: 168,
                            left: 30.345726013183594,
                            child: Text('Welcome , Signat', textAlign: TextAlign.left, style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontFamily: 'Montserrat',
                                fontSize: 18,
                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1
                            ),)
                        ),Positioned(
                            top: 192,
                            left: 60.345726013183594,
                            child: Text('signat@gmail.com', textAlign: TextAlign.center, style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontFamily: 'Montserrat',
                                fontSize: 10,
                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1
                            ),)
                        ),


                      ]
                  )
              )
            ],

          ),
        ),
        backgroundColor: green,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                    width: 375,
                    height: 378,
                    decoration: BoxDecoration(
                      borderRadius : BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      boxShadow : [BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                          offset: Offset(0,2),
                          blurRadius: 4
                      )],
                      color : Color.fromRGBO(13, 14, 14, 1),
                    ),
                    child: Stack(
                        children: <Widget>[

                          Positioned(
                              top: 65,
                              left: 298,
                              child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    border : Border.all(
                                      color: Color.fromRGBO(81, 163, 163, 1),
                                      width: 1,
                                    ),
                                    image : DecorationImage(
                                        image: AssetImage('assets/signat.png'),
                                        fit: BoxFit.fitWidth,
                                    ),
                                    borderRadius : BorderRadius.all(Radius.elliptical(40, 40)),
                                  ),
                              ),
                          ),Positioned(
                              top: 57,
                              left: 99,
                              child: Text('Welcome , Signat', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontFamily: 'Montserrat',
                                  fontSize: 18,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1
                              ),)
                          ),

                          Positioned(
                              top: 201,
                              left: 126,
                              child: Text('N 165,000', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontFamily: 'Montserrat',
                                  fontSize: 24,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1
                              ),)
                          ),Positioned(
                              top: 120,
                              left: 129,
                              child: Text('signat@gmail.com', textAlign: TextAlign.center, style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontFamily: 'Montserrat',
                                  fontSize: 10,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1
                              ),)
                          ),Positioned(
                              top: 166,
                              left: 129,
                              child: Text('Avaliable Balance', textAlign: TextAlign.center, style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontFamily: 'Montserrat',
                                  fontSize: 10,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1
                              ),)
                          ),Positioned(
                              top: 262,
                              left: 32,
                              child: Container(
                                  width: 310,
                                  height: 40,

                                  child: Stack(
                                      children: <Widget>[
                                        Positioned(
                                            top: 0,
                                            left: 0,
                                            child: InkWell(
                                              onTap: (){
                                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Trade1()));
                                              },
                                              child: Container(
                                                  width: 310,
                                                  height: 40,
                                                  decoration: BoxDecoration(
                                                    borderRadius : BorderRadius.only(
                                                      topLeft: Radius.circular(5),
                                                      topRight: Radius.circular(5),
                                                      bottomLeft: Radius.circular(5),
                                                      bottomRight: Radius.circular(5),
                                                    ),
                                                    color : Color.fromRGBO(81, 163, 163, 1),
                                                  ),
                                                  child: Stack(
                                                      children: <Widget>[
                                                        Positioned(
                                                            top: 10,
                                                            left: 86,
                                                            child: Text('TRADE GIFT CARD', textAlign: TextAlign.left, style: TextStyle(
                                                                color: Color.fromRGBO(13, 14, 14, 1),
                                                                fontFamily: 'Montserrat',
                                                                fontSize: 14,
                                                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                                fontWeight: FontWeight.normal,
                                                                height: 1
                                                            ),)
                                                        ),Positioned(
                                                            top: 10,
                                                            left: 267,
                                                            child: Image.asset("assets/card1c.png"),
                                                        ),
                                                      ]
                                                  ),
                                              ),
                                            ),
                                        ),
                                      ]
                                  )
                              )
                          ),Positioned(
                              top: 60.61376953125,
                              left: 30,
                              child: Container(
                                  width: 22.611940383911133,
                                  height: 15,

                                  child: Stack(
                                      children: <Widget>[
                                        Positioned(
                                            top: 0,
                                            left: 0,
                                            child: Container(
                                                width: 22.611940383911133,
                                                height: 15,

                                                child: Stack(
                                                    children: <Widget>[
                                                      Positioned(
                                                          top: 0,
                                                          left: 0,
                                                          child: InkWell(
                                                            onTap: (){
                                                              _globalKey.currentState!.openDrawer();
                                                            },

                                                            child: SvgPicture.asset(
                                                              "assets/fmenu.svg",color: Colors.white,
                                                              height: 20,
                                                              width: 20,
                                                            ),
                                                          ),
                                                      ),
                                                    ]
                                                )
                                            )
                                        ),
                                      ]
                                  )
                              )
                          ),
                        ]
                    )
                ),
                Container(
                    width: 316,
                    height: 141,
                    decoration: BoxDecoration(
                      borderRadius : BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      boxShadow : [BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                          offset: Offset(0,2),
                          blurRadius: 4
                      )],
                      color : Color.fromRGBO(255, 255, 255, 1),
                    ),
                    child: Stack(
                        children: <Widget>[
                          Positioned(
                              top: 14,
                              left: 24,
                              child: Text('Top Gift Cards', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(13, 13, 13, 1),
                                  fontFamily: 'Montserrat',
                                  fontSize: 14,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1
                              ),)
                          ),Positioned(
                              top: 44,
                              left: 22,
                              child: Container(
                                  width: 63.999996185302734,
                                  height: 48,
                                  decoration: BoxDecoration(
                                    image : DecorationImage(
                                        image: AssetImage('assets/amazon.png'),
                                        fit: BoxFit.fitWidth
                                    ),
                                  )
                              )
                          ),Positioned(
                              top: 44,
                              left: 109,
                              child: Container(
                                  width: 63.999996185302734,
                                  height: 48,
                                  decoration: BoxDecoration(
                                    image : DecorationImage(
                                        image: AssetImage('assets/itunes.png'),
                                        fit: BoxFit.fitWidth
                                    ),
                                  )
                              )
                          ),Positioned(
                              top: 44,
                              left: 196,
                              child: Container(
                                  width: 63.999996185302734,
                                  height: 48,
                                  decoration: BoxDecoration(
                                    borderRadius : BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                      topRight: Radius.circular(5),
                                      bottomLeft: Radius.circular(5),
                                      bottomRight: Radius.circular(5),
                                    ),
                                    image : DecorationImage(
                                        image: AssetImage('assets/skrill.png'),
                                        fit: BoxFit.fitWidth
                                    ),
                                  ),
                              )
                          ),Positioned(
                              top: 63,
                              left: 291,
                              child: SvgPicture.asset(
                                  'assets/checkmark.svg',
                                  semanticsLabel: 'vector'
                              ),
                          ),Positioned(
                              top: 109,
                              left: 31,
                              child: Container(
                                  width: 49,
                                  height: 13,

                                  child: Stack(
                                      children: <Widget>[
                                      Positioned(
                                            top: 0,
                                            left: 12,
                                            child: Text('400', textAlign: TextAlign.center, style: TextStyle(
                                                color: Color.fromRGBO(0, 0, 0, 1),
                                                fontFamily: 'Montserrat',
                                                fontSize: 14,
                                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1
                                            ),)
                                        ),
                                      ]
                                  )
                              )
                          ),Positioned(
                              top: 109,
                              left: 117,
                              child: Container(
                                  width: 49,
                                  height: 13,

                                  child: Stack(
                                      children: <Widget>[
                                        Positioned(
                                            top: 0,
                                            left: 12,
                                            child: Text('500', textAlign: TextAlign.center, style: TextStyle(
                                                color: Color.fromRGBO(0, 0, 0, 1),
                                                fontFamily: 'Montserrat',
                                                fontSize: 14,
                                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1
                                            ),)
                                        ),
                                      ]
                                  )
                              )
                          ),Positioned(
                              top: 109,
                              left: 203,
                              child: Container(
                                  width: 49,
                                  height: 13,

                                  child: Stack(
                                      children: <Widget>[
                                        Positioned(
                                            top: 2,
                                            left: 0,
                                            child: Container(
                                                width: 11.666666984558105,
                                                height: 10,

                                                child: Stack(
                                                    children: <Widget>[
                                                    ]
                                                )
                                            )
                                        ),Positioned(
                                            top: 0,
                                            left: 12,
                                            child: Text('350', textAlign: TextAlign.center, style: TextStyle(
                                                color: Color.fromRGBO(0, 0, 0, 1),
                                                fontFamily: 'Montserrat',
                                                fontSize: 14,
                                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1
                                            ),)
                                        ),
                                      ]
                                  )
                              )
                          ),
                        ]
                    )
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    width: 316,
                    height: 192,
                    decoration: BoxDecoration(
                      borderRadius : BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      boxShadow : [BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                          offset: Offset(0,2),
                          blurRadius: 4
                      )],
                      color : Color.fromRGBO(255, 255, 255, 1),
                    ),
                    child: Stack(
                        children: <Widget>[
                          Positioned(
                              top: 14,
                              left: 22,
                              child: Text('Latest trades', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(13, 13, 13, 1),
                                  fontFamily: 'Montserrat',
                                  fontSize: 14,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1
                              ),)
                          ),Positioned(
                              top: 14,
                              left: 232,
                              child: Container(
                                  width: 66.68421173095703,
                                  height: 16,

                                  child: Stack(
                                      children: <Widget>[
                                        Positioned(
                                            top: 0,
                                            left: 0,
                                            child: Text('See all', textAlign: TextAlign.center, style: TextStyle(
                                                color: Color.fromRGBO(81, 163, 163, 1),
                                                fontFamily: 'Montserrat',
                                                fontSize: 12,
                                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1
                                            ),)
                                        ),
                                      ]
                                  )
                              )
                          ),Positioned(
                              top: 47,
                              left: 17,
                              child: Container(
                                  width: 287,
                                  height: 36,

                                  child: Stack(
                                      children: <Widget>[
                                        Positioned(
                                            top: 0,
                                            left: 5,
                                            child: Text('Apple Itunes', textAlign: TextAlign.left, style: TextStyle(
                                                color: Color.fromRGBO(13, 13, 13, 1),
                                                fontFamily: 'Montserrat',
                                                fontSize: 14,
                                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1
                                            ),)
                                        ),Positioned(
                                            top: 0,
                                            left: 237,
                                            child: Text('\$ 50', textAlign: TextAlign.left, style: TextStyle(
                                                color: Color.fromRGBO(13, 13, 13, 1),
                                                fontFamily: 'Montserrat',
                                                fontSize: 14,
                                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1
                                            ),)
                                        ),Positioned(
                                            top: 19,
                                            left: 0,
                                            child: Text('March 14th, 2021 4:29PM ', textAlign: TextAlign.center, style: TextStyle(
                                                color: Color.fromRGBO(13, 14, 14, 1),
                                                fontFamily: 'Montserrat',
                                                fontSize: 12,
                                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1
                                            ),)
                                        ),Positioned(
                                            top: 19,
                                            left: 198,
                                            child: Text('Total : 30,000', textAlign: TextAlign.center, style: TextStyle(
                                                color: Color.fromRGBO(13, 14, 14, 1),
                                                fontFamily: 'Montserrat',
                                                fontSize: 12,
                                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1
                                            ),)
                                        ),
                                      ]
                                  )
                              )
                          ),Positioned(
                              top: 96,
                              left: 17,
                              child: Container(
                                  width: 287,
                                  height: 36,

                                  child: Stack(
                                      children: <Widget>[
                                        Positioned(
                                            top: 0,
                                            left: 5,
                                            child: Text('Apple Itunes', textAlign: TextAlign.left, style: TextStyle(
                                                color: Color.fromRGBO(13, 13, 13, 1),
                                                fontFamily: 'Montserrat',
                                                fontSize: 14,
                                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1
                                            ),)
                                        ),Positioned(
                                            top: 0,
                                            left: 237,
                                            child: Text('\$ 50', textAlign: TextAlign.left, style: TextStyle(
                                                color: Color.fromRGBO(13, 13, 13, 1),
                                                fontFamily: 'Montserrat',
                                                fontSize: 14,
                                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1
                                            ),)
                                        ),Positioned(
                                            top: 19,
                                            left: 0,
                                            child: Text('March 14th, 2021 4:29PM ', textAlign: TextAlign.center, style: TextStyle(
                                                color: Color.fromRGBO(13, 14, 14, 1),
                                                fontFamily: 'Montserrat',
                                                fontSize: 12,
                                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1
                                            ),)
                                        ),Positioned(
                                            top: 19,
                                            left: 198,
                                            child: Text('Total : 30,000', textAlign: TextAlign.center, style: TextStyle(
                                                color: Color.fromRGBO(13, 14, 14, 1),
                                                fontFamily: 'Montserrat',
                                                fontSize: 12,
                                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1
                                            ),)
                                        ),
                                      ]
                                  )
                              )
                          ),Positioned(
                              top: 145,
                              left: 17,
                              child: Container(
                                  width: 287,
                                  height: 36,

                                  child: Stack(
                                      children: <Widget>[
                                        Positioned(
                                            top: 0,
                                            left: 5,
                                            child: Text('Apple Itunes', textAlign: TextAlign.left, style: TextStyle(
                                                color: Color.fromRGBO(13, 13, 13, 1),
                                                fontFamily: 'Montserrat',
                                                fontSize: 14,
                                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1
                                            ),)
                                        ),Positioned(
                                            top: 0,
                                            left: 237,
                                            child: Text('\$ 50', textAlign: TextAlign.left, style: TextStyle(
                                                color: Color.fromRGBO(13, 13, 13, 1),
                                                fontFamily: 'Montserrat',
                                                fontSize: 14,
                                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1
                                            ),)
                                        ),Positioned(
                                            top: 19,
                                            left: 0,
                                            child: Text('March 14th, 2021 4:29PM ', textAlign: TextAlign.center, style: TextStyle(
                                                color: Color.fromRGBO(13, 14, 14, 1),
                                                fontFamily: 'Montserrat',
                                                fontSize: 12,
                                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1
                                            ),)
                                        ),Positioned(
                                            top: 19,
                                            left: 198,
                                            child: Text('Total : 30,000', textAlign: TextAlign.center, style: TextStyle(
                                                color: Color.fromRGBO(13, 14, 14, 1),
                                                fontFamily: 'Montserrat',
                                                fontSize: 12,
                                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1
                                            ),)
                                        ),


                                      ]
                                  )
                              ),


                          ),

                        ]
                    )
                ),
                   //lastman
                SizedBox(height: 20,),


              ],
            ),
          ),
        ),

      ),
    );
  }
}
