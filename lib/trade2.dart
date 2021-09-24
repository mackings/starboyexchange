

import 'package:flutter/material.dart';
import 'package:starboyexchange/account1.dart';
import 'dart:math' as math;
import 'package:flutter_svg/svg.dart';
import 'package:starboyexchange/rate1.dart';
// ignore: import_of_legacy_library_into_null_safe



class Trade2 extends StatefulWidget {
  const Trade2({Key ? key}) : super(key: key);

  @override
  _Trade2State createState() => _Trade2State();
}

class _Trade2State extends State<Trade2> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: green,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  width: 375,
                  height: 812,
                  decoration: BoxDecoration(
                    color : Color.fromRGBO(28, 24, 24, 1),
                  ),
                  child: Stack(
                      children: <Widget>[
                        Positioned(
                            top: -13,
                            left: -10,
                            child: Container(
                                width: 385,
                                height: 725,
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
                                  color : Color.fromRGBO(81, 163, 163, 1),
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
                                                    fit: BoxFit.fitWidth
                                                ),
                                                borderRadius : BorderRadius.all(Radius.elliptical(40, 40)),
                                              )
                                          )
                                      ),Positioned(
                                          top: 76,
                                          left: 103,
                                          child: Text('Upload Gift Cards', textAlign: TextAlign.left, style: TextStyle(
                                              color: Color.fromRGBO(255, 255, 255, 1),
                                              fontFamily: 'Montserrat',
                                              fontSize: 18,
                                              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height: 1
                                          ),)
                                      ),Positioned(
                                          top: 75.6184310913086,
                                          left: 41.76918411254883,
                                          child: Transform.rotate(
                                            angle: 10 * (math.pi / 180),
                                            child: SvgPicture.asset(
                                                'assets/arrowleft.svg',
                                                semanticsLabel: 'vector',
                                              color: Colors.white,
                                            ),
                                          )
                                      ),Positioned(
                                          top: 138,
                                          left: 32,
                                          child: Container(
                                              width: 146,
                                              height: 138,
                                              decoration: BoxDecoration(
                                                borderRadius : BorderRadius.only(
                                                  topLeft: Radius.circular(5),
                                                  topRight: Radius.circular(5),
                                                  bottomLeft: Radius.circular(5),
                                                  bottomRight: Radius.circular(5),
                                                ),
                                                color : Color.fromRGBO(13, 13, 13, 0.5099999904632568),
                                                border : Border.all(
                                                  color: Color.fromRGBO(0, 0, 0, 1),
                                                  width: 1,
                                                ),
                                              ),
                                              child: Stack(
                                                  children: <Widget>[
                                                    Positioned(
                                                        top: 57,
                                                        left: 59,
                                                        child: Container(
                                                            width: 28.571428298950195,
                                                            height: 25,

                                                            child: Stack(
                                                                children: <Widget>[
                                                                  Positioned(
                                                                      top: 5.357142925262451,
                                                                      left: 5.357142925262451,
                                                                      child: SvgPicture.asset(
                                                                          'assets/photo.svg',
                                                                          semanticsLabel: 'vector',
                                                                        color: Colors.white,
                                                                        height: 20,
                                                                        width: 20,
                                                                      ),
                                                                  ),Positioned(
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
                                      ),Positioned(
                                          top: 227,
                                          left: 234,
                                          child: Text('Tap To Upload Image', textAlign: TextAlign.center, style: TextStyle(
                                              color: Color.fromRGBO(255, 255, 255, 1),
                                              fontFamily: 'Montserrat',
                                              fontSize: 10,
                                              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height: 1
                                          ),)
                                      ),Positioned(
                                          top: 188.7532196044922,
                                          left: 281.306640625,
                                          child: InkWell(
                                            child: SvgPicture.asset(
                                                'assets/cloudup.svg',
                                                semanticsLabel: 'vector',
                                              height: 40,
                                              width: 50,
                                              color: Colors.white,
                                            ),
                                          ),
                                      ),
                                    ]
                                )
                            )
                        ),Positioned(
                            top: 600,
                            left: 29,
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
                                          left: 40,
                                          child: Container(
                                              width: 237,
                                              height: 40,

                                              child: Stack(
                                                  children: <Widget>[
                                                    Positioned(
                                                        top: 0,
                                                        left: 0,
                                                        child: InkWell(
                                                          onTap: (){
                                                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Rate1()));
                                                          },
                                                          child: Container(
                                                              width: 237,
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
                                                                        top: 11,
                                                                        left: 62,
                                                                        child: Text('SUBMIT TRADE', textAlign: TextAlign.left, style: TextStyle(
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
                                                          ),
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
