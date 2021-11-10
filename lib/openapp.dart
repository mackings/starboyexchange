import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:starboyexchange/account1.dart';
import 'dart:math' as math;

import 'package:starboyexchange/login.dart';

class Openapp extends StatefulWidget {
  const Openapp({Key? key}) : super(key: key);

  @override
  _OpenappState createState() => _OpenappState();
}

class _OpenappState extends State<Openapp> {
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
                  height: 650,
                  decoration: BoxDecoration(
                    color : Color.fromRGBO(81, 163, 163, 1),
                  ),
                  child: Stack(
                      children: <Widget>[
                        Positioned(
                            top: 510,
                            left: 110,
                            child: Container(
                                width: 156.1904754638672,
                                height: 98,

                                child: Stack(
                                    children: <Widget>[
                                      Positioned(
                                          top: 58,
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
                                                  color : Color.fromRGBO(229, 229, 229, 1),
                                                ),
                                                child: Stack(
                                                    children: <Widget>[
                                                      Positioned(
                                                          top: 15,
                                                          left: 53,
                                                          child: Text('LOGIN', textAlign: TextAlign.left, style: TextStyle(
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
                                      ),Positioned(
                                          top: 0,
                                          left: 0,
                                          child: InkWell(
                                            onTap: (){
                                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Account1()));
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
                                                  color : Color.fromRGBO(13, 13, 13, 1),
                                                ),
                                                child: Stack(
                                                    children: <Widget>[
                                                      Positioned(
                                                          top: 13,
                                                          left: 11,
                                                          child: Text('CREATE ACCOUNT', textAlign: TextAlign.left, style: TextStyle(
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
                            top: 23,
                            left: -68,
                            child: Container(
                                width: 506,
                                height: 400,
                                decoration: BoxDecoration(
                                  image : DecorationImage(
                                      image: AssetImage('assets/gift.png'),
                                      fit: BoxFit.fitWidth
                                  ),
                                )
                            )
                        ),Positioned(
                            top: 430,
                            left: 100,
                            child: Transform.rotate(
                              angle: 2.0188553577814413e-16 * (math.pi / 180),
                              child: Text('Xchange', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontFamily: 'Montserrat',
                                  fontSize: 36,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1
                              ),),
                            )
                        ),Positioned(
                            top: 390,
                            left: 115,
                            child: Transform.rotate(
                              angle: 2.2216249567550326e-16 * (math.pi / 180),
                              child: Text('  Star', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontFamily: 'Montserrat',
                                  fontSize: 36,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1
                              ),),
                            )
                        ),Positioned(
                            top: 850.2861938476562,
                            left: 31,
                            child: Transform.rotate(
                              angle: 34.83850442938349 * (math.pi / 180),
                              child: SvgPicture.asset(
                                  'assets/images/vector.svg',
                                  semanticsLabel: 'vector'
                              ),
                            )
                        ),
                      ]
                  )
              ),

            ],
          ),
        ),
      ),
    );
  }
}
