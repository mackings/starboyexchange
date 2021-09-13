import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:math' as math;

class Withdraw1 extends StatefulWidget {
  const Withdraw1({Key ?key}) : super(key: key);

  @override
  _Withdraw1State createState() => _Withdraw1State();
}

class _Withdraw1State extends State<Withdraw1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: SingleChildScrollView(
              child: Column(
                children: [
                Container(
                width: 375,
                height: 827,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  boxShadow: [BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      offset: Offset(0, 2),
                      blurRadius: 4
                  )
                  ],
                  color: Color.fromRGBO(13, 14, 14, 1),
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
                          border: Border.all(
                            color: Color.fromRGBO(81, 163, 163, 1),
                            width: 1,
                          ),
                          image: DecorationImage(
                              image: AssetImage('assets/signat.png'),
                              fit: BoxFit.fitWidth
                          ),
                          borderRadius: BorderRadius.all(
                              Radius.elliptical(40, 40)),
                        )
                    )
                ),
                Positioned(
                    top: 77,
                    left: 128,
                    child: Text(
                      'Withdrawal', textAlign: TextAlign.left, style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontFamily: 'Montserrat',
                        fontSize: 18,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1
                    ),)
                ),
                Positioned(
                    top: 82.28997802734375,
                    left: 30,
                    child: Container(
                        width: 22.6119384765625,
                        height: 15.903846740722656,

                        child: Stack(
                            children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                      width: 22.6119384765625,
                                      height: 15.903846740722656,

                                      child: Stack(
                                          children: <Widget>[
                                            Positioned(
                                              top: 0,
                                              left: 0,
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
                Positioned(
                    top: 82.29046630859375,
                    left: 30,
                    child: Container(
                        width: 22.6119384765625,
                        height: 15.903846740722656,

                        child: Stack(
                            children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                      width: 22.6119384765625,
                                      height: 15.903846740722656,

                                      child: Stack(
                                          children: <Widget>[
                                            Positioned(
                                              top: 0,
                                              left: 0,
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
                Positioned(
                    top: 123,
                    left: 30,
                    child: Container(
                        width: 314,
                        height: 406,

                        child: Stack(
                            children: <Widget>[
                              Positioned(
                                  top: 356,
                                  left: 2,
                                  child: Container(
                                      width: 312,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(5),
                                          topRight: Radius.circular(5),
                                          bottomLeft: Radius.circular(5),
                                          bottomRight: Radius.circular(5),
                                        ),
                                        color: Color.fromRGBO(
                                            68, 78, 78, 0.5099999904632568),
                                        border: Border.all(
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                          width: 1,
                                        ),
                                      ),
                                      child: Stack(
                                          children: <Widget>[
                                            Positioned(
                                                top: 19,
                                                left: 12,
                                                child: Text('Naira',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          196, 196, 196, 1),
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 10,
                                                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                      fontWeight: FontWeight
                                                          .normal,
                                                      height: 1
                                                  ),)
                                            ), Positioned(
                                              top: 20,
                                              left: 296,
                                              child: Transform.rotate(
                                                angle: -90.00000000000003 *
                                                    (math.pi / 180),
                                                child: SvgPicture.asset(
                                                    'assets/images/vector.svg',
                                                    semanticsLabel: 'vector'
                                                ),
                                              ),
                                            ),
                                          ]
                                      )
                                  )
                              ), Positioned(
                                  top: 332,
                                  left: 2,
                                  child: Text(
                                    'Select Currency', textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        fontFamily: 'Montserrat',
                                        fontSize: 14,
                                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1
                                    ),)
                              ), Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Text(
                                    'read Carefully :', textAlign: TextAlign.left,
                                    style: TextStyle(
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
                    top: 539,
                    left: 32,
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
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(5),
                                          topRight: Radius.circular(5),
                                          bottomLeft: Radius.circular(5),
                                          bottomRight: Radius.circular(5),
                                        ),
                                        color: Color.fromRGBO(
                                            68, 78, 78, 0.5099999904632568),
                                        border: Border.all(
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                          width: 1,
                                        ),
                                      ),
                                      child: Stack(
                                          children: <Widget>[
                                            Positioned(
                                                top: 19,
                                                left: 12,
                                                child: Text('Enter Amount Here',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          196, 196, 196, 1),
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 10,
                                                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                      fontWeight: FontWeight
                                                          .normal,
                                                      height: 1
                                                  ),)
                                            ),
                                          ]
                                      )
                                  )
                              ), Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Text(
                                    'Enter Amount', textAlign: TextAlign.left,
                                    style: TextStyle(
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
                    top: 640,
                    left: 69,
                    child: Container(
                        width: 237,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5),
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(5),
                          ),
                          color: Color.fromRGBO(81, 163, 163, 1),
                        ),
                        child: Stack(
                            children: <Widget>[
                              Positioned(
                                  top: 11,
                                  left: 77,
                                  child: Text(
                                    'Withdraw', textAlign: TextAlign.left,
                                    style: TextStyle(
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
                ),
                Positioned(
                    top: 159,
                    left: 29,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '1.  withdrwal to third party accounts is not \n tolerated and issues arisng from such action \n will be treated with minimal proirity.', textAlign: TextAlign.left, style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'Montserrat',
                              fontSize: 12,
                              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1.5
                          ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '2.  Ensure that your account does not have limit  \n nd can recieve up to the amount you are trying  \n to withdraw', textAlign: TextAlign.left, style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'Montserrat',
                              fontSize: 12,
                              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1.5
                          ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '3.  you should recieve your payment within a few  \n minutes. in case of any issues , contact  \n support for gudiance and resolution', textAlign: TextAlign.left, style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'Montserrat',
                              fontSize: 12,
                              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1.5
                          ),),
                        ),
                      ],
                    )
        ),
        Positioned(
          top: 403,
          left: 121,
          child: Text('N 165,000', textAlign: TextAlign.left, style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontFamily: 'Montserrat',
                fontSize: 24,
                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                fontWeight: FontWeight.normal,
                height: 1
          ),),
        ), Positioned(
        top: 368,
        left: 124,
        child: Text(
          'Avaliable Balance', textAlign: TextAlign.center, style: TextStyle(
              color: Color.fromRGBO(255, 255, 255, 1),
              fontFamily: 'Montserrat',
              fontSize: 10,
              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
              fontWeight: FontWeight.normal,
              height: 1
        ),)
    ), Positioned(
      top: 433.6138000488281,
      left: 254,
      child: SvgPicture.asset(
          'assets/hide.svg',
          semanticsLabel: 'vector',
        color: Colors.white,
      ),
    ),
        ]
    )),


    ],
    ),
            ),
    ),
    );
    }
}
