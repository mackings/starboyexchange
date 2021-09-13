import 'package:flutter/material.dart';
import 'package:starboyexchange/introsliders.dart';
import 'dart:math' as math;
import 'package:flutter_svg/svg.dart';


class Rate1 extends StatefulWidget {
  const Rate1({Key? key}) : super(key: key);

  @override
  _Rate1State createState() => _Rate1State();
}

class _Rate1State extends State<Rate1> {
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
                  height: 827,
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
                                      fit: BoxFit.fitWidth
                                  ),
                                  borderRadius : BorderRadius.all(Radius.elliptical(40, 40)),
                                )
                            )
                        ),Positioned(
                            top: 77,
                            left: 109,
                            child: Text('Rate Calculator', textAlign: TextAlign.left, style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontFamily: 'Montserrat',
                                fontSize: 18,
                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1
                            ),)
                        ),Positioned(
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
                                                            'assets/photo.svg',
                                                            semanticsLabel: 'vector',
                                                          color: Colors.white,
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
                                                          'assets/photo.svg',
                                                          semanticsLabel: 'vector',
                                                          color: Colors.white,
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
                            top: 187,
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
                                                color : Color.fromRGBO(68, 77, 77, 0.5099999904632568),
                                                border : Border.all(
                                                  color: Color.fromRGBO(0, 0, 0, 1),
                                                  width: 1,
                                                ),
                                              ),
                                              child: Stack(
                                                  children: <Widget>[
                                                    Positioned(
                                                      left: 20,
                                                      child: DropdownButton<String>(
                                                        items: <String>['Amazon', 'Walmart', 'WellsFargo', 'Steam'].map((String value) {
                                                          return DropdownMenuItem<String>(
                                                            value: value,
                                                            child: Text(value,style: TextStyle(color: Colors.black),),
                                                          );
                                                        }).toList(),
                                                        onChanged: (_) {},
                                                      ),
                                                    ),

                                                    Positioned(
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
                            top: 273,
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
                                                color : Color.fromRGBO(68, 78, 78, 0.5099999904632568),
                                                border : Border.all(
                                                  color: Color.fromRGBO(0, 0, 0, 1),
                                                  width: 1,
                                                ),
                                              ),
                                              child: Stack(
                                                  children: <Widget>[
                                                    //Dropdown
                                                    Positioned(
                                                      left: 20,
                                                      child: DropdownButton<String>(
                                                        items: <String>['Amazon', 'Walmart', 'WellsFargo', 'Steam'].map((String value) {
                                                          return DropdownMenuItem<String>(
                                                            value: value,
                                                            child: Text(value,style: TextStyle(color: Colors.black),),
                                                          );
                                                        }).toList(),
                                                        onChanged: (_) {},
                                                      ),
                                                    ),
                                                    Positioned(
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
                                          child: Text('Select Sub - Category', textAlign: TextAlign.left, style: TextStyle(
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
                            top: 445,
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
                                                color : Color.fromRGBO(68, 78, 78, 0.5099999904632568),
                                                border : Border.all(
                                                  color: Color.fromRGBO(0, 0, 0, 1),
                                                  width: 1,
                                                ),
                                              ),
                                              child: Stack(
                                                  children: <Widget>[
                                                    Positioned(
                                                      left: 20,
                                                      child: DropdownButton<String>(
                                                        items: <String>['Naira', 'Dollar', 'Pounds', 'Euros'].map((String value) {
                                                          return DropdownMenuItem<String>(
                                                            value: value,
                                                            child: Text(value,style: TextStyle(color: Colors.black),),
                                                          );
                                                        }).toList(),
                                                        onChanged: (_) {},
                                                      ),
                                                    ),
                                                   Positioned(
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
                                          child: Text('Select Currency', textAlign: TextAlign.left, style: TextStyle(
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
                            top: 359,
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
                                                color : Color.fromRGBO(68, 78, 78, 0.5099999904632568),
                                                border : Border.all(
                                                  color: Color.fromRGBO(0, 0, 0, 1),
                                                  width: 1,
                                                ),
                                              ),
                                              child: Stack(
                                                  children: <Widget>[
                                                    TextFormField(
                                                      textAlign: TextAlign.start,
                                                      cursorColor: Colors.black,
                                                      keyboardType: TextInputType.number,
                                                      decoration: InputDecoration(
                                                        border: InputBorder.none,
                                                        focusedBorder: InputBorder.none,
                                                        enabledBorder: InputBorder.none,
                                                        errorBorder: InputBorder.none,
                                                        disabledBorder: InputBorder.none,
                                                        hintText: "500",hintStyle: TextStyle(color: Colors.teal),
                                                        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                                                      ),
                                                    ),
                                                  ]
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
                            top: 542,
                            left: 30,
                            child: Container(
                                width: 316,
                                height: 103,

                                child: Stack(
                                    children: <Widget>[
                                      Positioned(
                                          top: 0,
                                          left: 0,
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
                                                color : Color.fromRGBO(81, 163, 163, 0.8999999761581421),
                                              ),
                                              child: Stack(
                                                  children: <Widget>[
                                                    Positioned(
                                                        top: 13,
                                                        left: 25,
                                                        child: Container(
                                                            width: 139,
                                                            height: 77,

                                                            child: Stack(
                                                                children: <Widget>[
                                                                  Positioned(
                                                                      top: 0,
                                                                      left: 0,
                                                                      child: Text('You entered \$ 0', textAlign: TextAlign.left, style: TextStyle(
                                                                          color: Color.fromRGBO(196, 196, 196, 1),
                                                                          fontFamily: 'Montserrat',
                                                                          fontSize: 14,
                                                                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                                          fontWeight: FontWeight.normal,
                                                                          height: 1
                                                                      ),)
                                                                  ),Positioned(
                                                                      top: 29,
                                                                      left: 0,
                                                                      child: Text('\$ 0 * 0', textAlign: TextAlign.left, style: TextStyle(
                                                                          color: Color.fromRGBO(255, 255, 255, 1),
                                                                          fontFamily: 'Montserrat',
                                                                          fontSize: 14,
                                                                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                                          fontWeight: FontWeight.normal,
                                                                          height: 1
                                                                      ),)
                                                                  ),Positioned(
                                                                      top: 58,
                                                                      left: 0,
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
                                      ),
                                    ]
                                )
                            )
                        ),
                        Positioned(
                            top: 670,
                            left: 69,
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
                                          left: 74,
                                          child: Text('CALCULATE', textAlign: TextAlign.left, style: TextStyle(
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
                            top: 122,
                            left: 95,
                            child: Container(
                                width: 185,
                                height: 25,
                                decoration: BoxDecoration(
                                  borderRadius : BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  ),
                                  color : Color.fromRGBO(43, 48, 48, 1),
                                ),
                                child: Stack(
                                    children: <Widget>[
                                      Positioned(
                                          top: 6,
                                          left: 110,
                                          child: Text('top 10 Cards', textAlign: TextAlign.center, style: TextStyle(
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
                        ),Positioned(
                            top: 122,
                            left: 92,
                            child: Container(
                                width: 103,
                                height: 25,
                                decoration: BoxDecoration(
                                  borderRadius : BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  ),
                                  color : Color.fromRGBO(81, 163, 163, 1),
                                ),
                                child: Stack(
                                    children: <Widget>[
                                      Positioned(
                                          top: 6,
                                          left: 27,
                                          child: Text('Gift card', textAlign: TextAlign.center, style: TextStyle(
                                              color: Color.fromRGBO(13, 14, 14, 1),
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
