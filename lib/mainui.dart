import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:starboyexchange/account1.dart';
import 'package:starboyexchange/trade1.dart';

import 'history.dart';

class Mainui extends StatefulWidget {
  const Mainui({Key ?key}) : super(key: key);

  @override
  _MainuiState createState() => _MainuiState();
}

class _MainuiState extends State<Mainui> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                                                          child: SvgPicture.asset(
                                                            "assets/fmenu.svg",color: Colors.white,
                                                            height: 20,
                                                            width: 20,
                                                          ),
                                                      ),
                                                    ]
                                                )
                                            )
                                        ),
                                      ]
                                  )
                              )
                          ),Positioned(
                              top: 206.97021484375,
                              left: 259,
                              child: SvgPicture.asset(
                                  'assets/images/vector.svg',
                                  semanticsLabel: 'vector'
                              ),
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
                              top: 14,
                              left: 138,
                              child: SvgPicture.asset(
                                  'assets/images/vector.svg',
                                  semanticsLabel: 'vector'
                              ),
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
                                  'asses/checkmark.svg',
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
                                            top: 2,
                                            left: 0,
                                            child: Container(
                                                width: 11.666666984558105,
                                                height: 10,

                                                child: Stack(
                                                    children: <Widget>[
                                                      Positioned(
                                                          top: 0,
                                                          left: 1.6666666269302368,
                                                          child: SvgPicture.asset(
                                                              'assets/images/vector.svg',
                                                              semanticsLabel: 'vector'
                                                          ),
                                                      ),Positioned(
                                                          top: 3.3333332538604736,
                                                          left: 2.2737367544323206e-13,
                                                          child: SvgPicture.asset(
                                                              'assets/images/vector.svg',
                                                              semanticsLabel: 'vector'
                                                          ),
                                                      ),Positioned(
                                                          top: 6.666666507720947,
                                                          left: 2.2737367544323206e-13,
                                                          child: SvgPicture.asset(
                                                              'assets/images/vector.svg',
                                                              semanticsLabel: 'vector'
                                                          ),
                                                      ),
                                                    ]
                                                )
                                            )
                                        ),Positioned(
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
                                            top: 2,
                                            left: 0,
                                            child: Container(
                                                width: 11.666666984558105,
                                                height: 10,

                                                child: Stack(
                                                    children: <Widget>[
                                                      Positioned(
                                                          top: 0,
                                                          left: 1.6666666269302368,
                                                          child: SvgPicture.asset(
                                                              'assets/images/vector.svg',
                                                              semanticsLabel: 'vector'
                                                          ),
                                                      ),Positioned(
                                                          top: 3.3333332538604736,
                                                          left: 2.2737367544323206e-13,
                                                          child: SvgPicture.asset(
                                                              'assets/images/vector.svg',
                                                              semanticsLabel: 'vector'
                                                          ),
                                                      ),Positioned(
                                                          top: 6.666666507720947,
                                                          left: 2.2737367544323206e-13,
                                                          child: SvgPicture.asset(
                                                              'assets/images/vector.svg',
                                                              semanticsLabel: 'vector'
                                                          ),
                                                      ),
                                                    ]
                                                )
                                            )
                                        ),Positioned(
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
                                                      Positioned(
                                                          top: 0,
                                                          left: 1.6666666269302368,
                                                          child: SvgPicture.asset(
                                                              'assets/images/vector.svg',
                                                              semanticsLabel: 'vector'
                                                          ),
                                                      ),Positioned(
                                                          top: 3.3333332538604736,
                                                          left: 2.2737367544323206e-13,
                                                          child: SvgPicture.asset(
                                                              'assets/images/vector.svg',
                                                              semanticsLabel: 'vector'
                                                          ),
                                                      ),Positioned(
                                                          top: 6.666666507720947,
                                                          left: 2.2737367544323206e-13,
                                                          child: SvgPicture.asset(
                                                              'assets/images/vector.svg',
                                                              semanticsLabel: 'vector'
                                                          ),
                                                      ),
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
                                            left: 58,
                                            child: SvgPicture.asset(
                                                'assets/images/vector.svg',
                                                semanticsLabel: 'vector'
                                            ),
                                        ),Positioned(
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
                              )
                          ),

                        ]
                    )
                ),
                   //lastman
                SizedBox(height: 20,),
                Positioned(
                    top: 650,
                    left: 26,
                    child: Container(
                        width: 316,
                        height: 67,
                        decoration: BoxDecoration(
                          borderRadius : BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          boxShadow : [BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                              offset: Offset(0,4),
                              blurRadius: 3
                          )],
                          color : Color.fromRGBO(255, 255, 255, 1),
                        ),
                        child: Stack(
                            children: <Widget>[
                              Positioned(
                                  top: 14,
                                  left: 22,
                                  child: Container(
                                      width: 40,
                                      height: 44,

                                      child: Stack(
                                          children: <Widget>[
                                            Positioned(
                                              top: 0,
                                              left: 5,
                                              child: SvgPicture.asset(
                                                  'assets/home.svg',
                                                  semanticsLabel: 'vector'
                                              ),
                                            ),Positioned(
                                                top: 28,
                                                left: 0,
                                                child: Text('Home', textAlign: TextAlign.left, style: TextStyle(
                                                    color: Color.fromRGBO(81, 163, 163, 0.5),
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
                                  top: 14,
                                  left: 84,
                                  child: Container(
                                      width: 64,
                                      height: 42,

                                      child: Stack(
                                          children: <Widget>[
                                            Positioned(
                                                top: 28,
                                                left: 0,
                                                child: Container(
                                                    width: 64,
                                                    height: 14,

                                                    child: Stack(
                                                        children: <Widget>[
                                                          Positioned(
                                                              top: 0,
                                                              left: 0,
                                                              child: Text(' Calculate', textAlign: TextAlign.left, style: TextStyle(
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
                                              top: 0,
                                              left: 21,
                                              child: SvgPicture.asset(
                                                'assets/calculator.svg',
                                                semanticsLabel: 'vector',
                                                color: Colors.black,
                                                height: 20,
                                                width: 20,
                                              ),
                                            ),
                                          ]
                                      )
                                  )
                              ),Positioned(
                                  top: 14,
                                  left: 173,
                                  child: InkWell(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>History1()));
                                    },
                                    child: Container(
                                        width: 46,
                                        height: 47,

                                        child: Stack(
                                            children: <Widget>[
                                              Positioned(
                                                  top: 28,
                                                  left: 0,
                                                  child: Container(
                                                      width: 46,
                                                      height: 19,

                                                      child: Stack(
                                                          children: <Widget>[
                                                            Positioned(
                                                                top: 0,
                                                                left: 0,
                                                                child: Text('History', textAlign: TextAlign.left, style: TextStyle(
                                                                    color: Color.fromRGBO(81, 163, 163, 0.5),
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
                                                  top: 0,
                                                  left: 11,
                                                  child: Container(
                                                      width: 24,
                                                      height: 23,

                                                      child: Stack(
                                                          children: <Widget>[
                                                            Positioned(
                                                                top: 0,
                                                                left: 0,
                                                                child: Container(
                                                                    width: 24,
                                                                    height: 23,

                                                                    child: Stack(
                                                                        children: <Widget>[
                                                                          Positioned(
                                                                            top: 0,
                                                                            left: 0,
                                                                            child: SvgPicture.asset(
                                                                              'assets/search.svg',
                                                                              semanticsLabel: 'vector',
                                                                              color: Colors.black,
                                                                              height: 20,width: 20,
                                                                            ),
                                                                          ),Positioned(
                                                                            top: 12.7774658203125,
                                                                            left: 13.3333740234375,
                                                                            child: SvgPicture.asset(
                                                                                'assets/images/vector.svg',
                                                                                semanticsLabel: 'vector'
                                                                            ),
                                                                          ),Positioned(
                                                                            top: 19.16666603088379,
                                                                            left: 20.666748046875,
                                                                            child: SvgPicture.asset(
                                                                                'assets/images/vector.svg',
                                                                                semanticsLabel: 'vector'
                                                                            ),
                                                                          ),Positioned(
                                                                            top: 6.38873291015625,
                                                                            left: 5.3333740234375,
                                                                            child: SvgPicture.asset(
                                                                                'assets/images/vector.svg',
                                                                                semanticsLabel: 'vector'
                                                                            ),
                                                                          ),Positioned(
                                                                            top: 11.5,
                                                                            left: 5.3333740234375,
                                                                            child: SvgPicture.asset(
                                                                                'assets/images/vector.svg',
                                                                                semanticsLabel: 'vector'
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
                                  )
                              ),Positioned(
                                  top: 14,
                                  left: 242,
                                  child: Container(
                                      width: 67,
                                      height: 40,

                                      child: Stack(
                                          children: <Widget>[
                                            Positioned(
                                                top: 28,
                                                left: 0,
                                                child: Container(
                                                    width: 67,
                                                    height: 12,

                                                    child: Stack(
                                                        children: <Widget>[
                                                          Positioned(
                                                              top: 0,
                                                              left: 0,
                                                              child: Text('withdraw', textAlign: TextAlign.left, style: TextStyle(
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
                                                top: 0,
                                                left: 20,
                                                child: Container(
                                                    width: 27.5,
                                                    height: 25,

                                                    child: Stack(
                                                        children: <Widget>[
                                                          Positioned(
                                                            top: 0,
                                                            left: 0,
                                                            child: SvgPicture.asset(
                                                              'assets/atm.svg',
                                                              semanticsLabel: 'vector',
                                                              color: Colors.black,
                                                              height: 20,width: 20,
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
                    )
                ),

              ],
            ),
          ),
        ),


        drawer: Drawer(),
      ),
    );
  }
}
