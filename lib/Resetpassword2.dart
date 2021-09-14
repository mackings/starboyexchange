import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:starboyexchange/account1.dart';
import 'dart:math' as math;

import 'login.dart';

class ResetPassword2 extends StatefulWidget {
  const ResetPassword2({Key ?key}) : super(key: key);

  @override
  _ResetPassword2State createState() => _ResetPassword2State();
}

class _ResetPassword2State extends State<ResetPassword2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: green,
        body:SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Image.asset("assets/gift.png",height: 100,width: 520,),
                //starboy
                Text("StarBoy\n Xchange",style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.bold,
                ),),
                SizedBox(
                  height: 5,
                ),
                Text('Reset Password', textAlign: TextAlign.left, style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Montserrat',
                    fontSize: 24,
                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.bold,
                    height: 1
                ),),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text('Dear Star User Kindly Enter Your New', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'Montserrat',
                      fontSize: 12,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),),
                ),
                Text('Password Alongside Token Sent', textAlign: TextAlign.left, style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Montserrat',
                    fontSize: 12,
                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1
                ),),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text('To Your Email', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'Montserrat',
                      fontSize: 12,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),),
                ),
                SizedBox(
                  height: 10,
                ),


                SizedBox(
                  height: 5,
                ),
                //Old password
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
                                height: 40,
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
                                          hintText: "Enter The Old Password Here",hintStyle: TextStyle(color: inputcolor),
                                          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                                        ),
                                      ),
                                    ]
                                ),
                              ),
                            ),Positioned(
                                top: 0,
                                left: 0,
                                child: Text('Old Password', textAlign: TextAlign.left, style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Montserrat',
                                    fontSize: 18,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.bold,
                                    height: 1
                                ),)
                            ),
                          ]
                      )
                  ),
                ),
                //newPass
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
                                height: 40,
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
                                          hintText: "Enter New Password Here",hintStyle: TextStyle(color: inputcolor),
                                          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                                        ),
                                      ),
                                    ]
                                ),
                              ),
                            ),Positioned(
                                top: 0,
                                left: 0,
                                child: Text('New Password', textAlign: TextAlign.left, style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Montserrat',
                                    fontSize: 18,
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
                                height: 40,
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
                                          hintText: "Confirm Password Here",hintStyle: TextStyle(color: inputcolor),
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
                                    fontSize: 18,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.bold,
                                    height: 1
                                ),)
                            ),
                          ]
                      )
                  ),
                ),
                //token
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
                                height: 40,
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
                                          hintText: "Enter Token Here",hintStyle: TextStyle(color: inputcolor),
                                          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                                        ),
                                      ),
                                    ]
                                ),
                              ),
                            ),Positioned(
                                top: 0,
                                left: 0,
                                child: Text('Enter Token', textAlign: TextAlign.left, style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Montserrat',
                                    fontSize: 18,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.bold,
                                    height: 1
                                ),)
                            ),
                          ]
                      )
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //loginbtn
                InkWell(
                  onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                  },
                  child: Container(
                      width: 156.1904754638672,
                      height: 40,

                      child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 0,
                                left: 0,
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
                                              child: Text('RESET', textAlign: TextAlign.left, style: TextStyle(
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
                          ]
                      )
                  ),
                ),
                //Noget account?oya register
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('You Have An Account ?', textAlign: TextAlign.left, style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontFamily: 'Montserrat',
                        fontSize: 12,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1
                    ),),
                    SizedBox(width: 10,),

                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                      },
                      child: Text('Login Here', textAlign: TextAlign.left, style: TextStyle(
                          color: Color.fromRGBO(13, 13, 13, 1),
                          fontFamily: 'Montserrat',
                          fontSize: 12,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1
                      ),),
                    )
                  ],
                )





              ],
            ),
          ),
        ),
      ),
    );
  }
}
