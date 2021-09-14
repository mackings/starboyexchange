import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:starboyexchange/account1.dart';
import 'dart:math' as math;

class Testing extends StatefulWidget {
  const Testing({Key? key}) : super(key: key);

  @override
  _TestingState createState() => _TestingState();
}

class _TestingState extends State<Testing> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  width: 380,
                  height: 712,
                  decoration: BoxDecoration(
                    color : Color.fromRGBO(81, 163, 163, 1),
                  ),
                  child: Stack(
                      children: <Widget>[
                        Positioned(
                            top: 795.2861328125,
                            left: 166,
                            child: Transform.rotate(
                              angle: 10.83850442938349 * (math.pi / 180),
                              child: SvgPicture.asset(
                                  'assets/arrowleft.svg',
                                  semanticsLabel: 'vector',
                                color: Colors.white,
                              ),
                            )
                        ),Positioned(
                            top: 0,
                            left: 0,
                            child: Container(
                                width: 390,
                                height: 812,
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

                                    ]
                                )
                            )
                        ),Positioned(
                            top: 560,
                            left: 100,
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
                                  color : Color.fromRGBO(81, 163, 163, 1),
                                ),
                                child: Stack(
                                    children: <Widget>[
                                      Positioned(
                                          top: 10,
                                          left: 54,
                                          child: Text('DONE', textAlign: TextAlign.left, style: TextStyle(
                                              color: Color.fromRGBO(13, 14, 14, 1),
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
                            top: 61,
                            left: 128,
                            child: Text('Confirm Details', textAlign: TextAlign.left, style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontFamily: 'Montserrat',
                                fontSize: 14,
                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1
                            ),)
                        ),Positioned(
                            top: 50,
                            left: 20.26251220703125,
                            child: Transform.rotate(
                              angle: 10 * (math.pi / 180),
                              child: SvgPicture.asset(
                                  'assets/arrowleft.svg',
                                  semanticsLabel: 'vector',
                                color: Colors.white,
                              ),
                            )
                        ),Positioned(
                            top: 100,
                            left: 56,
                            child: Container(
                                width: 270,
                                height: 175,
                                decoration: BoxDecoration(
                                  boxShadow : [BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, 0.25),
                                      offset: Offset(0,4),
                                      blurRadius: 4
                                  )],
                                  image : DecorationImage(
                                      image: AssetImage('assets/card.png'),
                                      fit: BoxFit.fitWidth
                                  ),
                                )
                            )
                        ),Positioned(
                            top: 280,
                            left: 31,
                            child: Container(
                                width: 312,
                                height: 74,

                                child: Stack(
                                    children: <Widget>[
                                      Positioned(
                                          top: 24,
                                          left: 0,
                                          child: Container(
                                              width: 312,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                borderRadius : BorderRadius.only(
                                                  topLeft: Radius.circular(5),
                                                  topRight: Radius.circular(5),
                                                  bottomLeft: Radius.circular(5),
                                                  bottomRight: Radius.circular(5),
                                                ),
                                                color : Color.fromRGBO(68, 78, 78, 0.5099999904632568),
                                                border : Border.all(
                                                  color: Color.fromRGBO(0, 0, 0, 1),
                                                  width: 1,
                                                ),
                                              ),
                                              child: Stack(
                                                  children: <Widget>[
                                                    Positioned(
                                                        top: 19,
                                                        left: 12,
                                                        child: Text('United Bank For Africa', textAlign: TextAlign.center, style: TextStyle(
                                                            color: Color.fromRGBO(196, 196, 196, 1),
                                                            fontFamily: 'Montserrat',
                                                            fontSize: 10,
                                                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                            fontWeight: FontWeight.normal,
                                                            height: 1
                                                        ),)
                                                    ),Positioned(
                                                        top: 19.86875343322754,
                                                        left: 280.1312561035156,
                                                        child: Transform.rotate(
                                                          angle: -89.99999999999999 * (math.pi / 180),
                                                          child: SvgPicture.asset(
                                                              'assets/arrowleft.svg',
                                                              semanticsLabel: 'vector',
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                    ),
                                                  ]
                                              )
                                          )
                                      ),Positioned(
                                          top: 0,
                                          left: 0,
                                          child: Text('Select Bank', textAlign: TextAlign.left, style: TextStyle(
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
                            )
                        ),Positioned(
                            top: 370,
                            left: 30,
                            child: Container(
                                width: 312,
                                height: 74,

                                child: Stack(
                                    children: <Widget>[
                                      Positioned(
                                          top: 24,
                                          left: 0,
                                          child: Container(
                                              width: 312,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                borderRadius : BorderRadius.only(
                                                  topLeft: Radius.circular(5),
                                                  topRight: Radius.circular(5),
                                                  bottomLeft: Radius.circular(5),
                                                  bottomRight: Radius.circular(5),
                                                ),
                                                color : Color.fromRGBO(68, 78, 78, 0.5099999904632568),
                                                border : Border.all(
                                                  color: Color.fromRGBO(0, 0, 0, 1),
                                                  width: 1,
                                                ),
                                              ),
                                              child: Stack(
                                                  children: <Widget>[
                                                    Positioned(
                                                        top: 19,
                                                        left: 12,
                                                        child: Text('Enter account Number Here', textAlign: TextAlign.center, style: TextStyle(
                                                            color: Color.fromRGBO(196, 196, 196, 1),
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
                                      ),Positioned(
                                          top: 0,
                                          left: 0,
                                          child: Text('Enter Account Number', textAlign: TextAlign.left, style: TextStyle(
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
                            )
                        ),Positioned(
                            top: 460,
                            left: 31,
                            child: Container(
                                width: 312,
                                height: 74,

                                child: Stack(
                                    children: <Widget>[
                                      Positioned(
                                          top: 24,
                                          left: 0,
                                          child: Container(
                                              width: 312,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                borderRadius : BorderRadius.only(
                                                  topLeft: Radius.circular(5),
                                                  topRight: Radius.circular(5),
                                                  bottomLeft: Radius.circular(5),
                                                  bottomRight: Radius.circular(5),
                                                ),
                                                color : Color.fromRGBO(68, 78, 78, 0.5099999904632568),
                                                border : Border.all(
                                                  color: Color.fromRGBO(0, 0, 0, 1),
                                                  width: 1,
                                                ),
                                              ),
                                              child: Stack(
                                                  children: <Widget>[
                                                    Positioned(
                                                        top: 19,
                                                        left: 12,
                                                        child: Text('John Dosumo', textAlign: TextAlign.center, style: TextStyle(
                                                            color: Color.fromRGBO(196, 196, 196, 1),
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
                                      ),

                                      Positioned(
                                          top: 0,
                                          left: 0,
                                          child: Text('Enter Account Name', textAlign: TextAlign.left, style: TextStyle(
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
                            )
                        ),

                        Positioned(
                            top: 620,
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
                      ]
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}
