import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:starboyexchange/account1.dart';
import 'dart:math' as math;

import 'package:starboyexchange/trade2.dart';

class Trade1 extends StatefulWidget {
  const Trade1({Key ?key}) : super(key: key);

  @override
  _Trade1State createState() => _Trade1State();
}

class _Trade1State extends State<Trade1> {
  TextEditingController amountcontroller = TextEditingController();
  var myamt = 0;



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
                  height: 770,
                  decoration: BoxDecoration(
                    color : Color.fromRGBO(28, 24, 24, 1),
                  ),
                  child: Stack(
                      children: <Widget>[
                        Positioned(
                            top: -13,
                            left: -5,
                            child: Container(
                                width: 375,
                                height: 825,
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
                                          left: 116,
                                          child: Text('Trade Gift Card', textAlign: TextAlign.left, style: TextStyle(
                                              color: Color.fromRGBO(255, 255, 255, 1),
                                              fontFamily: 'Montserrat',
                                              fontSize: 18,
                                              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height: 1
                                          ),)
                                      ),Positioned(
                                          top: 70.6184310913086,
                                          left: 20.684268951416016,
                                          child: Transform.rotate(
                                            angle:10 * (math.pi / 180),
                                            child: InkWell(
                                              onTap: (){
                                                Navigator.pop(context);
                                              },
                                              child: SvgPicture.asset(
                                                  'assets/arrowleft.svg',
                                                  semanticsLabel: 'vector',
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                      ),Positioned(
                                          top: 117,
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
                                                                      top: 19,
                                                                      left: 12,
                                                                      child: Text('Amazon', textAlign: TextAlign.center, style: TextStyle(
                                                                          color: Color.fromRGBO(196, 196, 196, 1),
                                                                          fontFamily: 'Montserrat',
                                                                          fontSize: 10,
                                                                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                                          fontWeight: FontWeight.normal,
                                                                          height: 1
                                                                      ),)
                                                                  ),Positioned(
                                                                      top: 20,
                                                                      left: 296,
                                                                      child: Transform.rotate(
                                                                        angle: -90.00000000000003 * (math.pi / 180),
                                                                        child: SvgPicture.asset(
                                                                            'assets/images/vector.svg',
                                                                            semanticsLabel: 'vector'
                                                                        ),
                                                                      )
                                                                  ),
                                                                ]
                                                            )
                                                        )
                                                    ),Positioned(
                                                        top: 0,
                                                        left: 0,
                                                        child: Text('Select Category', textAlign: TextAlign.left, style: TextStyle(
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
                                          top: 203,
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
                                                                      top: 19,
                                                                      left: 12,
                                                                      child: Text('Germany Amazon ( cash reciept )', textAlign: TextAlign.center, style: TextStyle(
                                                                          color: Color.fromRGBO(196, 196, 196, 1),
                                                                          fontFamily: 'Montserrat',
                                                                          fontSize: 10,
                                                                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                                          fontWeight: FontWeight.normal,
                                                                          height: 1
                                                                      ),)
                                                                  ),Positioned(
                                                                      top: 20,
                                                                      left: 296,
                                                                      child: Transform.rotate(
                                                                        angle: -90.00000000000003 * (math.pi / 180),
                                                                        child: SvgPicture.asset(
                                                                            'assets/images/vector.svg',
                                                                            semanticsLabel: 'vector'
                                                                        ),
                                                                      )
                                                                  ),
                                                                ]
                                                            )
                                                        )
                                                    ),Positioned(
                                                        top: 0,
                                                        left: 0,
                                                        child: Text('Select Sub- Category', textAlign: TextAlign.left, style: TextStyle(
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
                                          top: 375,
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
                                                                      top: 19,
                                                                      left: 12,
                                                                      child: Text('Naira', textAlign: TextAlign.center, style: TextStyle(
                                                                          color: Color.fromRGBO(196, 196, 196, 1),
                                                                          fontFamily: 'Montserrat',
                                                                          fontSize: 10,
                                                                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                                          fontWeight: FontWeight.normal,
                                                                          height: 1
                                                                      ),)
                                                                  ),Positioned(
                                                                      top: 20,
                                                                      left: 296,
                                                                      child: Transform.rotate(
                                                                        angle: -90.00000000000003 * (math.pi / 180),
                                                                        child: SvgPicture.asset(
                                                                            'assets/images/vector.svg',
                                                                            semanticsLabel: 'vector'
                                                                        ),
                                                                      )
                                                                  ),
                                                                ]
                                                            )
                                                        )
                                                    ),Positioned(
                                                        top: 0,
                                                        left: 0,
                                                        child: Text('Select Payment Method', textAlign: TextAlign.left, style: TextStyle(
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
                                          top: 580,
                                          left: 32,
                                          child: Container(
                                              width: 312,
                                              height: 125,

                                              child: Stack(
                                                  children: <Widget>[
                                                    Positioned(
                                                        top: 24,
                                                        left: 0,
                                                        child: Container(
                                                            width: 312,
                                                            height: 60,
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
                                                                  TextFormField(
                                                                    keyboardType: TextInputType.number,
                                                                    decoration: InputDecoration(
                                                                        hintText: "Enter Comments",
                                                                        hintStyle: TextStyle(color: Colors.white30),
                                                                        labelStyle: TextStyle(color: Colors.white),
                                                                      enabledBorder: UnderlineInputBorder(
                                                                        borderSide: BorderSide(color:  Colors.teal.shade900 ),
                                                                      ),
                                                                      focusedBorder: UnderlineInputBorder(
                                                                        borderSide: BorderSide(color:  Colors.teal.shade900 ),
                                                                      ),
                                                                      border: UnderlineInputBorder(
                                                                        borderSide: BorderSide(color:Colors.teal.shade900 ),
                                                                      ),

                                                                    ),
                                                                    textAlign: TextAlign.center,
                                                                    style: TextStyle(
                                                                      color: Colors.white,
                                                                      fontSize: 15.0,
                                                                    ),
                                                                  ),
                                                                ]
                                                            )
                                                        )
                                                    ),Positioned(
                                                        top: 0,
                                                        left: 0,
                                                        child: Text('Enter Comments ( Optional )', textAlign: TextAlign.left, style: TextStyle(
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
                                          top: 289,
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
                                                              color : Color.fromRGBO(13, 13, 13, 0.5099999904632568),
                                                              border : Border.all(
                                                                color: Color.fromRGBO(0, 0, 0, 1),
                                                                width: 1,
                                                              ),
                                                            ),
                                                            child: TextFormField(
                                                              controller: amountcontroller,
                                                              textAlign: TextAlign.start,
                                                              cursorColor: Colors.black,
                                                              keyboardType: TextInputType.number,
                                                              decoration: InputDecoration(
                                                                border: InputBorder.none,
                                                                focusedBorder: InputBorder.none,
                                                                enabledBorder: InputBorder.none,
                                                                errorBorder: InputBorder.none,
                                                                disabledBorder: InputBorder.none,
                                                                hintText: "Enter Amount Here",hintStyle: TextStyle(
                                                                  color: inputcolor,fontFamily: "Montserrat",fontSize: 12),
                                                                contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                                                              ),
                                                            )
                                                        )
                                                    ),Positioned(
                                                        top: 0,
                                                        left: 0,
                                                        child: Text('Enter Amount', textAlign: TextAlign.left, style: TextStyle(
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
                                          top: 457,
                                          left: 28,
                                          child: Container(
                                              width: 316,
                                              height: 103,
                                              decoration: BoxDecoration(
                                                borderRadius : BorderRadius.only(
                                                  topLeft: Radius.circular(20),
                                                  topRight: Radius.circular(20),
                                                  bottomLeft: Radius.circular(20),
                                                  bottomRight: Radius.circular(20),
                                                ),
                                                color : Color.fromRGBO(28, 24, 24, 1),
                                              ),
                                              child: Stack(
                                                  children: <Widget>[
                                                    Positioned(
                                                        top: 13,
                                                        left: 25,
                                                        child: InkWell(
                                                          child: Text('You entered \$${myamt} ', textAlign: TextAlign.left, style: TextStyle(
                                                              color: Color.fromRGBO(196, 196, 196, 1),
                                                              fontFamily: 'Montserrat',
                                                              fontSize: 14,
                                                              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                              fontWeight: FontWeight.normal,
                                                              height: 1
                                                          ),),
                                                        ),
                                                    ),Positioned(
                                                        top: 42,
                                                        left: 25,
                                                        child: Text('\$ ${amountcontroller.text}', textAlign: TextAlign.left, style: TextStyle(
                                                            color: Color.fromRGBO(255, 255, 255, 1),
                                                            fontFamily: 'Montserrat',
                                                            fontSize: 14,
                                                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                            fontWeight: FontWeight.normal,
                                                            height: 1
                                                        ),)
                                                    ),Positioned(
                                                        top: 71,
                                                        left: 25,
                                                        child: Text('Total = 0', textAlign: TextAlign.left, style: TextStyle(
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
                                    ]
                                )
                            )
                        ),Positioned(
                            top: 873.2861328125,
                            left: 107,
                            child: Transform.rotate(
                              angle: 34.83850442938349 * (math.pi / 180),
                              child: SvgPicture.asset(
                                  'assets/images/vector.svg',
                                  semanticsLabel: 'vector'
                              ),
                            )
                        ),Positioned(
                            top: 680,
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
                                                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Trade2()));
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
                                                                        left: 85,
                                                                        child: Text('SUBMIT ', textAlign: TextAlign.left, style: TextStyle(
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
