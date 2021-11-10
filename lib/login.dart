import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:starboyexchange/Resetpassword.dart';
import 'package:starboyexchange/account1.dart';
import 'dart:math' as math;

import 'package:starboyexchange/mainui.dart';
import 'package:starboyexchange/notifications.dart';
import 'package:starboyexchange/profile.dart';
import 'package:starboyexchange/testing.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Login extends StatefulWidget {
  const Login({Key ?key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController emailcon = TextEditingController();
  TextEditingController passcon = TextEditingController();
  var _formKey = GlobalKey<FormState>();


  Future Signin() async{
    try {
      UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailcon.text.trim(),
          password: passcon.text.trim(),

      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return ('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        return ('Wrong password provided for that user.');
      }
    }

    if(_formKey.currentState!.validate()){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Mainui()));
    }else{
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Account1()));
    }

  }


  Future Login() async{
    FirebaseAuth.instance.signInWithEmailAndPassword(email: emailcon.text, password: passcon.text);
    if(FirebaseAuth.instance.currentUser!.emailVerified){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
    }else{
      await Navigator.push(context, MaterialPageRoute(builder: (context)=>Account1()));
    }

  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: green,
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Center(
              child: Column(
                children: [
                  Image.asset("assets/gift.png",height: 200,width: 520,),
                  //starboy
                  Text("  Star",style: TextStyle(
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
                  Text('Welcome Back', textAlign: TextAlign.left, style: TextStyle(
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
                  Text('Hello Star User Kindly login to continue', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'Montserrat',
                      fontSize: 12,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),),
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
                                        Form(
                                          child: TextFormField(
                                            autocorrect: true,
                                            validator: (value){
                                              if(value!.isEmpty){
                                                return " Please Enter Details ";
                                              }

                                            },
                                            controller: emailcon,
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
                  //password
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
                                          validator: (value){
                                            if(value==null || value.isEmpty){
                                              return "Please Enter Your Password";
                                            }
                                            return null;
                                          },
                                          onSaved: (value){
                                            setState(() {
                                              passcon.text=value!;
                                            });
                                          },
                                          controller: passcon,
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
                                            hintText: "Enter Your Password Here",hintStyle: TextStyle(color: inputcolor,fontFamily:"Montserrat",fontSize: 12),
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
                  //nolook pass lol
                  Row(
                    children: [
                      Text('Forgot Password ?', textAlign: TextAlign.left, style: TextStyle(
                          color: green,
                          fontFamily: 'Montserrat',
                          fontSize: 12,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1
                      ),),
                      SizedBox(width: 100,),
                      InkWell(
                        onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=> ResetPassword()));
                        },
                        child: Text('Forgot Password ?', textAlign: TextAlign.left, style: TextStyle(
                            color: Color.fromRGBO(13, 13, 13, 1),
                            fontFamily: 'Montserrat',
                            fontSize: 12,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1
                        ),),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  //loginbtn
                  InkWell(
                    onTap: () {
                      if(_formKey.currentState!.validate()){
                        Login();
                      }else{
                        Fluttertoast.showToast(
                            msg: "Please Enter a correct Value",
                          backgroundColor: Colors.white,
                          textColor: Colors.teal,
                        );
                      }
                     //Login();
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


                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Account1()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text('Register Here', textAlign: TextAlign.left, style: TextStyle(
                              color: Color.fromRGBO(13, 13, 13, 1),
                              fontFamily: 'Montserrat',
                              fontSize: 12,
                              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1
                          ),),
                        ),
                      )
                    ],
                  )





                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
