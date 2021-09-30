import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:starboyexchange/account1.dart';
import 'package:starboyexchange/account2.dart';
import 'dart:math' as math;

import 'package:starboyexchange/login.dart';
import 'package:starboyexchange/profile.dart';

class Account3 extends StatefulWidget {
  const Account3({Key ?key}) : super(key: key);

  @override
  _Account3State createState() => _Account3State();
}

class _Account3State extends State<Account3> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: green,
              body: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 80,
                      width: 40,
                    ),
                     Padding(
                       padding: const EdgeInsets.all(10.0),
                       child: Image.asset("assets/card.png",height: 200,width: 350,),
                     ),

                    SvgPicture.asset("assets/checkmark.svg",height: 100,width: 90,color: Color.fromRGBO(0, 99, 21, 1),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text('Payment Details Added', textAlign: TextAlign.left, style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontFamily: 'Montserrat',
                        fontSize: 20,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.bold,
                        height: 1
                    ),),

                    SizedBox(
                      height: 20,
                    ),

                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Account2()));
                      },
                      child: Container(
                          width: 200,
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
                                    top: 16,
                                    left: 16,
                                    child: Text('Add New Payment Method', textAlign: TextAlign.left, style: TextStyle(
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

                    SizedBox(
                      height: 80,
                    ),

                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
                      },
                      child: Container(
                          width: 156.1904754638672,
                          height: 45,
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
                                    left: 54,
                                    child: Text('DONE', textAlign: TextAlign.left, style: TextStyle(
                                        color: Color.fromRGBO(13, 14, 14, 1),
                                        fontFamily: "Montserrat",
                                        fontSize: 14,
                                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.bold,
                                        height: 1
                                    ),)
                                ),

                              ]
                          ),
                      ),
                    ),







                  ],
                ),
              ),
      ),
    );
  }
}
