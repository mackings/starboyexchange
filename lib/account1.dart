

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:starboyexchange/account2.dart';
import 'package:starboyexchange/login.dart';



final green = Color.fromRGBO(81, 163, 163, 1);
final inputcolor = Color.fromRGBO(196, 196, 196, 1);


class Account1 extends StatefulWidget {
  const Account1({Key ? key}) : super(key: key);

  @override
  _Account1State createState() => _Account1State();
}

class _Account1State extends State<Account1> {
  //all input controllers

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: green,

        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 35,
                ),
                //starboy
                 Container(
                    width: 116,
                    height: 74,

                    child: Stack(
                        children: <Widget>[
                          Positioned(
                              top: 34.04002380371094,
                              left: 2.2737367544323206e-13,
                              child: Transform.rotate(
                                angle: 1.444701727598654e-16 * (math.pi / 180),
                                child: Text('Xchange', textAlign: TextAlign.left, style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Montserrat',
                                    fontSize: 25,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.bold,
                                    height: 1
                                ),),
                              ),
                          ),Positioned(
                              top: -2.2737367544323206e-13,
                              left: 2.2727131843566895,
                              child: Transform.rotate(
                                angle: 3.1347894642296156e-16 * (math.pi / 180),
                                child: Text('StarBoy', textAlign: TextAlign.left, style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Montserrat',
                                    fontSize: 25,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.bold,
                                    height: 1
                                ),),
                              )
                          ),

                        ]
                    ),
                ),
                 //usermsg
                 Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text('Hello Star User !!! \n Please We Just Need A Few Details From \n You So We Can Continue.', textAlign: TextAlign.center, style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                fontFamily: 'Montserrat',
                fontSize: 12,
                letterSpacing: 1,
                fontWeight: FontWeight.normal,
                height: 1.5,
          ),),
              ),

                 SizedBox(
                   height: 10,
                 ),
                 //inputfield1
                 Padding(
                   padding: const EdgeInsets.all(5.0),
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
                                    height: 45,
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
                                            textAlign: TextAlign.start,
                                            cursorColor: Colors.black,
                                            keyboardType: TextInputType.name,
                                            decoration: InputDecoration(
                                                border: InputBorder.none,
                                                focusedBorder: InputBorder.none,
                                                enabledBorder: InputBorder.none,
                                                errorBorder: InputBorder.none,
                                                disabledBorder: InputBorder.none,
                                                hintText: "Enter Full Name",hintStyle: TextStyle(color: inputcolor,fontFamily:"Montserrat",fontSize: 12),
                                              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                                          ),
                                          ),
                                        ]
                                    ),
                                ),
                            ),Positioned(
                                top: 0,
                                left: 0,
                                child: Text('Full name', textAlign: TextAlign.left, style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Montserrat',
                                    fontSize: 15,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.bold,
                                    height: 1
                                ),)
                            ),
                          ]
                      )
                ),
                 ),
             //inputfield2.
                Padding(
                  padding: const EdgeInsets.all(5.0),
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
                                height: 45,
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
                                        textAlign: TextAlign.start,
                                        cursorColor: Colors.black,
                                        keyboardType: TextInputType.emailAddress,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          enabledBorder: InputBorder.none,
                                          errorBorder: InputBorder.none,
                                          disabledBorder: InputBorder.none,
                                          hintText: "Enter Full Email Address Here",hintStyle: TextStyle(color: inputcolor,fontFamily:"Montserrat",fontSize: 12),
                                          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                                        ),
                                      ),
                                    ]
                                ),
                              ),
                            ),Positioned(
                                top: 0,
                                left: 0,
                                child: Text('Email Address', textAlign: TextAlign.left, style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Montserrat',
                                    fontSize: 12,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.bold,
                                    height: 1
                                ),)
                            ),
                          ]
                      )
                  ),
                ),
                //inputfield3,
                Padding(
                  padding: const EdgeInsets.all(5.0),
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
                                height: 45,
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
                                        textAlign: TextAlign.start,
                                        cursorColor: Colors.black,
                                        keyboardType: TextInputType.phone,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          enabledBorder: InputBorder.none,
                                          errorBorder: InputBorder.none,
                                          disabledBorder: InputBorder.none,
                                          hintText: "Enter Phone Number Here",hintStyle: TextStyle(color: inputcolor,fontFamily:"Montserrat",fontSize: 12),
                                          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                                        ),
                                      ),
                                    ]
                                ),
                              ),
                            ),Positioned(
                                top: 0,
                                left: 0,
                                child: Text('Phone Number', textAlign: TextAlign.left, style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Montserrat',
                                    fontSize: 15,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.bold,
                                    height: 1
                                ),)
                            ),
                          ]
                      )
                  ),
                ),
                //passwordinput
                Padding(
                  padding: const EdgeInsets.all(5.0),
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
                                height: 45,
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
                                        textAlign: TextAlign.start,
                                        cursorColor: Colors.black,
                                        keyboardType: TextInputType.visiblePassword,
                                        obscureText: true,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          enabledBorder: InputBorder.none,
                                          errorBorder: InputBorder.none,
                                          disabledBorder: InputBorder.none,
                                          hintText: "Enter A Strong Password Here",hintStyle: TextStyle(
                                            color: inputcolor,fontFamily:"Montserrat",fontSize: 12 ),
                                          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                                        ),
                                      ),
                                    ]
                                ),
                              ),
                            ),Positioned(
                                top: 0,
                                left: 0,
                                child: Text('Password', textAlign: TextAlign.left, style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Montserrat',
                                    fontSize: 15,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.bold,
                                    height: 1
                                ),)
                            ),
                          ]
                      )
                  ),
                ),
                //confirmpass
                Padding(
                  padding: const EdgeInsets.all(5.0),
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
                                height: 45,
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
                                        textAlign: TextAlign.start,
                                        cursorColor: Colors.black,
                                        keyboardType: TextInputType.visiblePassword,
                                        obscureText: true,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          enabledBorder: InputBorder.none,
                                          errorBorder: InputBorder.none,
                                          disabledBorder: InputBorder.none,
                                          hintText: "Confirm Password Here",hintStyle: TextStyle(color: inputcolor,fontFamily:"Montserrat",fontSize: 12),
                                          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                                        ),
                                      ),
                                    ]
                                ),
                              ),
                            ),Positioned(
                                top: 0,
                                left: 0,
                                child: Text('Confirm Password', textAlign: TextAlign.left, style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Montserrat',
                                    fontSize: 15,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.bold,
                                    height: 1
                                ),)
                            ),
                          ]
                      )
                  ),
                ),
                //signup btn
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: InkWell(
                    splashColor: Colors.grey,
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Account2()));
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
                                  top: 12,
                                  left: 46,
                                  child: Text('SIGN UP', textAlign: TextAlign.left, style: TextStyle(
                                      color: Color.fromRGBO(13, 14, 14, 1),
                                      fontFamily: 'Montserrat',
                                      fontSize: 14,
                                      letterSpacing: 0 ,
                                      fontWeight: FontWeight.bold,
                                      height: 1
                                  ),)
                              ),
                            ]
                        )
                    ),
                  ),
                ),
             //createAccount,login
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: (){
                          print("Watsup");
                        },
                        child: Text('Have an Account ? ', textAlign: TextAlign.center, style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.bold,
                          height: 1,
                        ),),
                      ),
                      SizedBox(
                        width: 10,
                      ),

                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Login()));
                        },
                        child: Text('Login Here', textAlign: TextAlign.center, style: TextStyle(
                            color: Color.fromRGBO(13, 14, 14, 1),
                            fontFamily: 'Montserrat',
                            fontSize: 14,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.bold,
                            height: 1
                        ),),
                      )
                    ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
