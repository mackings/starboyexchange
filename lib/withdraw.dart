import 'dart:convert';

import 'package:dropdown_search/dropdown_search.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'dart:math' as math;

import 'package:starboyexchange/withdraw2.dart';

import 'account1.dart';
import 'package:http/http.dart' as http;

class Withdraw1 extends StatefulWidget {
  const Withdraw1({Key? key}) : super(key: key);

  @override
  _Withdraw1State createState() => _Withdraw1State();
}

class _Withdraw1State extends State<Withdraw1> {
  dynamic withdrawbalance;

  getwalletbal() async {
    final withdrawbox = Hive.box('user');
    print(withdrawbox.get('walletBalance'));

    setState(() {
      withdrawbalance = withdrawbox.get('walletBalance');
    });
  }

  TextEditingController currencyc = TextEditingController();
  TextEditingController amountc = TextEditingController();

  final wkey = GlobalKey<FormState>();

//mailgun
  var emailapiurl = 'https://easymail.p.rapidapi.com/send';
  final usermail = FirebaseAuth.instance.currentUser!.email;

  dynamic result;
  Future mailgun() async {
    var response = await http.post(Uri.parse(emailapiurl),
        headers: {
          'content-type': 'application/json',
          'x-rapidapi-host': 'easymail.p.rapidapi.com',
          'x-rapidapi-key': '4d3203bd54mshae69b36a7cd471fp12e74fjsn565cea5d6fdd'
        },
        //body
        body: jsonEncode({
          "from": "Admin@starexchange",
          "to": 'urlgmz3@gmail.com',
          "subject": "Withdraw Request",
          "message":
              "<h1>${usermail} Has Requested to withdraw ${amountc.text}, Kindly Modify</h1>"
        }));

    if (response.statusCode == 200) {
      result = json.decode(response.body);
      print('Admin Notified Successfully');

      print(result);
    } else {
      print(response.statusCode);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: wkey,
            child: Column(
              children: [
                Container(
                    width: 375,
                    height: 800,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                            offset: Offset(0, 2),
                            blurRadius: 4)
                      ],
                      color: Color.fromRGBO(13, 14, 14, 1),
                    ),
                    child: Stack(children: <Widget>[
                      //signat
                      // Positioned(
                      //top: 35,
                      // left: 298,
                      //child: Container(
                      //   width: 40,
                      //  height: 40,
                      //  decoration: BoxDecoration(
                      //   border: Border.all(
                      //    color: Color.fromRGBO(81, 163, 163, 1),
                      //    width: 1,
                      //  ),
                      // image: DecorationImage(
                      //   image: AssetImage('assets/signat.png'),
                      //   fit: BoxFit.fitWidth
                      // ),
                      //borderRadius: BorderRadius.all(
                      //    Radius.elliptical(40, 40)),
                      //)
                      //  )
                      // ),
                      Positioned(
                          top: 47,
                          left: 128,
                          child: Text(
                            'Withdrawal',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontFamily: 'Montserrat',
                                fontSize: 18,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1),
                          )),
                      Positioned(
                          //upper
                          top: 52.28997802734375,
                          left: 30,
                          child: Container(
                              width: 22.6119384765625,
                              height: 15.903846740722656,
                              child: Stack(children: <Widget>[
                                Positioned(
                                    top: 0,
                                    left: 0,
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                          width: 22.6119384765625,
                                          height: 15.903846740722656,
                                          child: Stack(children: <Widget>[
                                            Positioned(
                                              top: 0,
                                              left: 0,
                                              child: SvgPicture.asset(
                                                'assets/arrowleft.svg',
                                                semanticsLabel: 'vector',
                                                color: Colors.white,
                                              ),
                                            ),
                                          ])),
                                    )),
                              ]))),
                      Positioned(
                          //menu Icon
                          top: 82.29046630859375,
                          left: 30,
                          child: Container(
                              width: 22.6119384765625,
                              height: 15.903846740722656,
                              child: Stack(children: <Widget>[]))),
                      Positioned(
                          top: 123,
                          left: 30,
                          child: Container(
                              width: 314,
                              height: 406,
                              child: Stack(children: <Widget>[
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
                                    child: DropdownSearch<String>(
                                      popupBackgroundColor: Colors.white,
                                      popupBarrierColor: green,
                                      items: [
                                        "Naira",
                                      ],
                                      popupItemDisabled: (String s) =>
                                          s.startsWith('E'),
                                    ),
                                  ),
                                ),
                                Positioned(
                                    top: 332,
                                    left: 2,
                                    child: Text(
                                      'Select Currency',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                          fontFamily: 'Montserrat',
                                          fontSize: 14,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                                Positioned(
                                    top: 0,
                                    left: 0,
                                    child: Text(
                                      'read Carefully :',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                          fontFamily: 'Montserrat',
                                          fontSize: 14,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                              ]))),
                      Positioned(
                          top: 539,
                          left: 32,
                          child: Container(
                              width: 312,
                              height: 74,
                              child: Stack(children: <Widget>[
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
                                      child: TextFormField(
                                        controller: amountc,
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'Please Enter Withraw Amount';
                                          }
                                          return null;
                                        },
                                        textAlign: TextAlign.start,
                                        cursorColor: Colors.black,
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          enabledBorder: InputBorder.none,
                                          errorBorder: InputBorder.none,
                                          disabledBorder: InputBorder.none,
                                          hintText: "500",
                                          hintStyle:
                                              TextStyle(color: Colors.teal),
                                          contentPadding: EdgeInsets.fromLTRB(
                                              20.0, 10.0, 20.0, 10.0),
                                        ),
                                      ),
                                    )),
                                Positioned(
                                    top: 0,
                                    left: 0,
                                    child: Text(
                                      'Enter Amount',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                          fontFamily: 'Montserrat',
                                          fontSize: 14,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                              ]))),
                      Positioned(
                          top: 640,
                          left: 69,
                          //withdraw button
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  if (withdrawbalance == 0 &&
                                      wkey.currentState!.validate()) {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            title: Text("Not Enough Balance"),
                                            content: Text(
                                                "You Need Up to 1000 Naira to Withdraw"),
                                            actions: <Widget>[
                                              FlatButton(
                                                child: Text("Ok"),
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                              )
                                            ],
                                          );
                                        });
                                  } else {
                                    mailgun();
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Withdraw2()));
                                  }
                                },
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
                                    child: Stack(children: <Widget>[
                                      Positioned(
                                          top: 11,
                                          left: 77,
                                          child: InkWell(
                                            child: Text(
                                              'Withdraw',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      13, 14, 14, 1),
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 14,
                                                  letterSpacing:
                                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1),
                                            ),
                                          )),
                                    ])),
                              ),
                            ],
                          )),
                      Positioned(
                          top: 159,
                          left: 29,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '1.  withdrwal to third party accounts is not \n tolerated and issues arisng from such action \n will be treated with minimal proirity.',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontFamily: 'Montserrat',
                                      fontSize: 12,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1.5),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '2.  Ensure that your account does not have limit  \n nd can recieve up to the amount you are trying  \n to withdraw',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontFamily: 'Montserrat',
                                      fontSize: 12,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1.5),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '3.  you should recieve your payment within a few  \n minutes. in case of any issues , contact  \n support for gudiance and resolution',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontFamily: 'Montserrat',
                                      fontSize: 12,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1.5),
                                ),
                              ),
                            ],
                          )),
                      Positioned(
                        top: 403,
                        left: 121,
                        child: Text(
                          withdrawbalance == null
                              ? ' N ****'
                              : 'N ${withdrawbalance.toString()}',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'Montserrat',
                              fontSize: 24,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        ),
                      ),
                      Positioned(
                          top: 368,
                          left: 124,
                          child: Text(
                            'Avaliable Balance',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontFamily: 'Montserrat',
                                fontSize: 10,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1),
                          )),
                      Positioned(
                        top: 390.6138000488281,
                        left: 254,
                        child: GestureDetector(
                          onTap: () {
                            getwalletbal();
                          },
                          child: Icon(
                            Icons.visibility,
                            size: 50,
                            color: Colors.white,
                          ),
                        ),
                      ),

                      Positioned(
                        top: 700,
                        left: 20,
                        child: Container(
                            width: 316,
                            height: 67,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.25),
                                    offset: Offset(0, 4),
                                    blurRadius: 3)
                              ],
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 14,
                                  left: 22,
                                  child: Container(
                                      width: 40,
                                      height: 44,
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                          top: 0,
                                          left: 5,
                                          child: SvgPicture.asset(
                                            'assets/home.svg',
                                            semanticsLabel: 'vector',
                                            height: 20,
                                            width: 20,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Positioned(
                                            top: 28,
                                            left: 0,
                                            child: Text(
                                              'Home',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      81, 163, 163, 0.5),
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 12,
                                                  letterSpacing:
                                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1),
                                            )),
                                      ]))),
                              Positioned(
                                  top: 14,
                                  left: 84,
                                  child: Container(
                                      width: 64,
                                      height: 42,
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                            top: 28,
                                            left: 0,
                                            child: Container(
                                                width: 64,
                                                height: 14,
                                                child: Stack(children: <Widget>[
                                                  Positioned(
                                                      top: 0,
                                                      left: 0,
                                                      child: Text(
                                                        ' Calculate',
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: TextStyle(
                                                            color:
                                                                Color
                                                                    .fromRGBO(
                                                                        81,
                                                                        163,
                                                                        163,
                                                                        1),
                                                            fontFamily:
                                                                'Montserrat',
                                                            fontSize: 12,
                                                            letterSpacing:
                                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            height: 1),
                                                      )),
                                                ]))),
                                        Positioned(
                                          top: 0,
                                          left: 21,
                                          child: SvgPicture.asset(
                                            'assets/calculator.svg',
                                            semanticsLabel: 'vector',
                                            height: 20,
                                            width: 20,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ]))),
                              Positioned(
                                  top: 14,
                                  left: 173,
                                  child: Container(
                                      width: 46,
                                      height: 47,
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                            top: 28,
                                            left: 0,
                                            child: Container(
                                                width: 46,
                                                height: 19,
                                                child: Stack(children: <Widget>[
                                                  Positioned(
                                                      top: 0,
                                                      left: 0,
                                                      child: Text(
                                                        'History',
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromRGBO(
                                                                    81,
                                                                    163,
                                                                    163,
                                                                    0.5),
                                                            fontFamily:
                                                                'Montserrat',
                                                            fontSize: 12,
                                                            letterSpacing:
                                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            height: 1),
                                                      )),
                                                ]))),
                                        Positioned(
                                            top: 0,
                                            left: 11,
                                            child: Container(
                                                width: 24,
                                                height: 23,
                                                child: Stack(children: <Widget>[
                                                  Positioned(
                                                      top: 0,
                                                      left: 0,
                                                      child: Container(
                                                          width: 24,
                                                          height: 23,
                                                          child:
                                                              Stack(children: <
                                                                  Widget>[
                                                            Positioned(
                                                              top: 0,
                                                              left: 0,
                                                              child: SvgPicture
                                                                  .asset(
                                                                'assets/search.svg',
                                                                semanticsLabel:
                                                                    'vector',
                                                                height: 20,
                                                                width: 20,
                                                                color: Colors
                                                                    .black,
                                                              ),
                                                            ),
                                                            Positioned(
                                                              top:
                                                                  12.7774658203125,
                                                              left:
                                                                  13.3333740234375,
                                                              child: SvgPicture
                                                                  .asset(
                                                                //none
                                                                'assets/calculator.svg',
                                                                semanticsLabel:
                                                                    'vector',
                                                                height: 20,
                                                                width: 20,
                                                                color: Colors
                                                                    .black,
                                                              ),
                                                            ),
                                                            Positioned(
                                                              top:
                                                                  19.16666603088379,
                                                              left:
                                                                  20.666748046875,
                                                              child: SvgPicture
                                                                  .asset(
                                                                //none
                                                                'assets/calculator.svg',
                                                                semanticsLabel:
                                                                    'vector',
                                                                height: 20,
                                                                width: 20,
                                                                color: Colors
                                                                    .black,
                                                              ),
                                                            ),
                                                            Positioned(
                                                              top:
                                                                  6.38873291015625,
                                                              left:
                                                                  5.3333740234375,
                                                              child: SvgPicture.asset(
                                                                  'assets/images/vector.svg',
                                                                  semanticsLabel:
                                                                      'vector'),
                                                            ),
                                                            Positioned(
                                                              top: 11.5,
                                                              left:
                                                                  5.3333740234375,
                                                              child: SvgPicture.asset(
                                                                  'assets/images/vector.svg',
                                                                  semanticsLabel:
                                                                      'vector'),
                                                            ),
                                                          ]))),
                                                ]))),
                                      ]))),
                              Positioned(
                                  top: 14,
                                  left: 242,
                                  child: Container(
                                      width: 67,
                                      height: 40,
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                            top: 28,
                                            left: 0,
                                            child: Container(
                                                width: 67,
                                                height: 12,
                                                child: Stack(children: <Widget>[
                                                  Positioned(
                                                      top: 0,
                                                      left: 0,
                                                      child: Text(
                                                        'withdraw',
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromRGBO(
                                                                    13,
                                                                    14,
                                                                    14,
                                                                    1),
                                                            fontFamily:
                                                                'Montserrat',
                                                            fontSize: 12,
                                                            letterSpacing:
                                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            height: 1),
                                                      )),
                                                ]))),
                                        Positioned(
                                            top: 0,
                                            left: 20,
                                            child: Container(
                                                width: 27.5,
                                                height: 25,
                                                child: Stack(children: <Widget>[
                                                  Positioned(
                                                    top: 0,
                                                    left: 0,
                                                    child: SvgPicture.asset(
                                                      'assets/atm.svg',
                                                      semanticsLabel: 'vector',
                                                      height: 20,
                                                      width: 20,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ]))),
                                      ]))),
                            ])),
                      ),
                    ])),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
