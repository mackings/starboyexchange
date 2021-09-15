import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:starboyexchange/Resetpassword2.dart';
import 'package:starboyexchange/account1.dart';
import 'dart:math' as math;

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key ?key}) : super(key: key);

  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
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
                Image.asset("assets/gift.png",height: 200,width: 520,),
                //starboy
                Text("StarBoy",style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.bold,
                ),),
                Text("Xchange",style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.bold,
                ),),
                SizedBox(
                  height: 10,
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
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text('Dear Star User Kindly Enter Your Email So', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'Montserrat',
                      fontSize: 12,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('We Can Send A Token To Reset Your', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'Montserrat',
                      fontSize: 12,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text('Password With.', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'Montserrat',
                      fontSize: 12,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),),
                ),
                SizedBox(
                  height: 20,
                ),
                //Email login
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
                                          hintText: "Enter Full Email Address Here",hintStyle: TextStyle(
                                            color: inputcolor,fontFamily: "Montserrat",fontSize: 12),
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
                  height: 5,
                ),
                SizedBox(
                  height: 10,
                ),

                SizedBox(
                  height: 15,
                ),
                //loginbtn
                InkWell(
                  onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>ResetPassword2()));
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
                    Text('Dont Have Account Yet ?', textAlign: TextAlign.left, style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontFamily: 'Montserrat',
                        fontSize: 12,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1
                    ),),
                   SizedBox(
                     width: 10,
                   ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Account1()));
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
