import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:starboyexchange/account1.dart';
import 'dart:math' as math;
import 'package:starboyexchange/trade2.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/link.dart';

class Trade1 extends StatefulWidget {
  const Trade1({Key? key}) : super(key: key);

  @override
  _Trade1State createState() => _Trade1State();
}

class _Trade1State extends State<Trade1> {
  TextEditingController amountcontroller = TextEditingController();

  var frate = 180;
  var xresult = 0;

  autocal() {
    xresult = frate * int.parse(amountcontroller.text);
    print(xresult);
  }

  late String look1 =
      "https://firebasestorage.googleapis.com/v0/b/starboyexchange-a9c9d.appspot.com/o/profile%2F";

  Future profilestream() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final url2 = prefs.getString('url');

    setState(() {
      look1 = url2!;
    });
  }

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
                  height: 750,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(28, 24, 24, 1),
                  ),
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: -13,
                        left: -5,
                        child: Container(
                            width: 375,
                            height: 825,
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
                                    offset: Offset(0, 2),
                                    blurRadius: 4)
                              ],
                              color: Color.fromRGBO(81, 163, 163, 1),
                            ),
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 45,
                                  left: 298,
                                  child: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color:
                                              Color.fromRGBO(81, 163, 163, 1),
                                          width: 1,
                                        ),
                                        image: DecorationImage(
                                            image:
                                                NetworkImage(look1.toString()),
                                            fit: BoxFit.fitWidth),
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(40, 40)),
                                      ))),
                              Positioned(
                                  top: 56,
                                  left: 116,
                                  child: Text(
                                    'Trade Gift Card',
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
                                top: 50.6184310913086,
                                left: 20.684268951416016,
                                child: Transform.rotate(
                                  angle: 10 * (math.pi / 180),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: SvgPicture.asset(
                                      'assets/arrowleft.svg',
                                      semanticsLabel: 'vector',
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                  top: 100,
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
                                                  bottomLeft:
                                                      Radius.circular(5),
                                                  bottomRight:
                                                      Radius.circular(5),
                                                ),
                                                color: Color.fromRGBO(13, 13,
                                                    13, 0.5099999904632568),
                                                border: Border.all(
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                  width: 1,
                                                ),
                                              ),
                                              child: DropdownSearch<String>(
                                                popupBackgroundColor: green,
                                                popupBarrierColor: Colors.white,
                                                items: [
                                                  "Amazon",
                                                  "Walmart",
                                                  "Visa",
                                                  "Amex",
                                                  "Xbox",
                                                  "Bestbuy",
                                                  "Google's Play",
                                                  'Itunes',
                                                  "Starbucks",
                                                  "BestBuy",
                                                  "Cadano",
                                                  "Steam",
                                                  "Ebay",
                                                  "Nordstorm",
                                                  "Sephora",
                                                  "Target",
                                                  "Cardano",
                                                  "Solana",
                                                  "Victoria's Secret",
                                                  "Chipotle",
                                                  "Dogecoin"
                                                ],
                                                popupItemDisabled: (String s) =>
                                                    s.startsWith('x'),
                                              ),
                                            )),
                                        Positioned(
                                            top: 0,
                                            left: 0,
                                            child: Text(
                                              'Select Category',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      255, 255, 255, 1),
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 14,
                                                  letterSpacing:
                                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1),
                                            )),
                                      ]))),
                              Positioned(
                                  top: 180,
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
                                                  bottomLeft:
                                                      Radius.circular(5),
                                                  bottomRight:
                                                      Radius.circular(5),
                                                ),
                                                color: Color.fromRGBO(13, 13,
                                                    13, 0.5099999904632568),
                                                border: Border.all(
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                  width: 1,
                                                ),
                                              ),
                                              child: DropdownSearch<String>(
                                                popupBackgroundColor: green,
                                                popupBarrierColor: Colors.white,
                                                items: [
                                                  "Amazon",
                                                  "Walmart",
                                                  "Visa",
                                                  'Apple Store',
                                                  "Steam",
                                                  "Ebay",
                                                  "Nordstorm",
                                                  "Target"
                                                ],
                                                popupItemDisabled: (String s) =>
                                                    s.startsWith('I'),
                                              ),
                                            )),
                                        Positioned(
                                            top: 0,
                                            left: 0,
                                            child: Text(
                                              'Select Sub- Category',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      255, 255, 255, 1),
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 14,
                                                  letterSpacing:
                                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1),
                                            )),
                                      ]))),
                              Positioned(
                                  top: 345,
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
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft: Radius.circular(5),
                                                    topRight:
                                                        Radius.circular(5),
                                                    bottomLeft:
                                                        Radius.circular(5),
                                                    bottomRight:
                                                        Radius.circular(5),
                                                  ),
                                                  color: Color.fromRGBO(13, 13,
                                                      13, 0.5099999904632568),
                                                  border: Border.all(
                                                    color: Color.fromRGBO(
                                                        0, 0, 0, 1),
                                                    width: 1,
                                                  ),
                                                ),
                                                child: Stack(children: <Widget>[
                                                  DropdownSearch<String>(
                                                    popupBackgroundColor: green,
                                                    popupBarrierColor: green,
                                                    items: [
                                                      "NAIRA",
                                                      "DOLLAR",
                                                      "BTC",
                                                      "AMAZON",
                                                    ],
                                                    popupItemDisabled:
                                                        (String s) =>
                                                            s.startsWith('A'),
                                                  ),
                                                ]))),
                                        Positioned(
                                            top: 0,
                                            left: 0,
                                            child: Text(
                                              'Select Payment Method',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      255, 255, 255, 1),
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 14,
                                                  letterSpacing:
                                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1),
                                            )),
                                      ]))),
                              Positioned(
                                  top: 540,
                                  left: 32,
                                  child: Container(
                                      width: 312,
                                      height: 125,
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                            top: 24,
                                            left: 0,
                                            child: Container(
                                                width: 312,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft: Radius.circular(5),
                                                    topRight:
                                                        Radius.circular(5),
                                                    bottomLeft:
                                                        Radius.circular(5),
                                                    bottomRight:
                                                        Radius.circular(5),
                                                  ),
                                                  color: Color.fromRGBO(13, 13,
                                                      13, 0.5099999904632568),
                                                  border: Border.all(
                                                    color: Color.fromRGBO(
                                                        0, 0, 0, 1),
                                                    width: 1,
                                                  ),
                                                ),
                                                child: Stack(children: <Widget>[
                                                  TextFormField(
                                                    keyboardType:
                                                        TextInputType.text,
                                                    decoration: InputDecoration(
                                                      hintText:
                                                          "Enter Comments",
                                                      hintStyle: TextStyle(
                                                          color:
                                                              Colors.white30),
                                                      labelStyle: TextStyle(
                                                          color: Colors.white),
                                                      enabledBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Colors.green
                                                                .shade900),
                                                      ),
                                                      focusedBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Colors.green
                                                                .shade900),
                                                      ),
                                                      border:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Colors.green
                                                                .shade900),
                                                      ),
                                                    ),
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15.0,
                                                    ),
                                                  ),
                                                ]))),
                                        Positioned(
                                            top: 0,
                                            left: 0,
                                            child: Text(
                                              'Enter Comments ( Optional )',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      255, 255, 255, 1),
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 14,
                                                  letterSpacing:
                                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1),
                                            )),
                                      ]))),
                              Positioned(
                                  top: 260,
                                  left: 31,
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
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft: Radius.circular(5),
                                                    topRight:
                                                        Radius.circular(5),
                                                    bottomLeft:
                                                        Radius.circular(5),
                                                    bottomRight:
                                                        Radius.circular(5),
                                                  ),
                                                  color: Color.fromRGBO(13, 13,
                                                      13, 0.5099999904632568),
                                                  border: Border.all(
                                                    color: Color.fromRGBO(
                                                        0, 0, 0, 1),
                                                    width: 1,
                                                  ),
                                                ),
                                                child: TextFormField(
                                                  controller: amountcontroller,
                                                  textAlign: TextAlign.start,
                                                  cursorColor: Colors.black,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  decoration: InputDecoration(
                                                    border: InputBorder.none,
                                                    focusedBorder:
                                                        InputBorder.none,
                                                    enabledBorder:
                                                        InputBorder.none,
                                                    errorBorder:
                                                        InputBorder.none,
                                                    disabledBorder:
                                                        InputBorder.none,
                                                    hintText:
                                                        "Enter Amount Here",
                                                    hintStyle: TextStyle(
                                                        color: inputcolor,
                                                        fontFamily:
                                                            "Montserrat",
                                                        fontSize: 12),
                                                    contentPadding:
                                                        EdgeInsets.fromLTRB(
                                                            20.0,
                                                            10.0,
                                                            20.0,
                                                            10.0),
                                                  ),
                                                ))),
                                        Positioned(
                                            top: 0,
                                            left: 0,
                                            child: Text(
                                              'Enter Amount',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      255, 255, 255, 1),
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 14,
                                                  letterSpacing:
                                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1),
                                            )),
                                      ]))),
                              Positioned(
                                  top: 430,
                                  left: 28,
                                  child: Container(
                                      width: 316,
                                      height: 103,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          topRight: Radius.circular(20),
                                          bottomLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20),
                                        ),
                                        color: Color.fromRGBO(28, 24, 24, 1),
                                      ),
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                          top: 13,
                                          left: 25,
                                          child: InkWell(
                                            onTap: () {
                                              profilestream();
                                              autocal();
                                              setState(() {
                                                var myresult = xresult;
                                              });
                                            },
                                            child: Text(
                                              'Calculate ',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                color: Color.fromRGBO(
                                                    196, 196, 196, 1),
                                                fontFamily: 'Montserrat',
                                                fontSize: 14,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                            top: 42,
                                            left: 25,
                                            child: Text(
                                              '\$ ${amountcontroller.text}',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      255, 255, 255, 1),
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 14,
                                                  letterSpacing:
                                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1),
                                            )),
                                        Positioned(
                                            top: 71,
                                            left: 25,
                                            child: Text(
                                              'Total: ${xresult}',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      255, 255, 255, 1),
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 14,
                                                  letterSpacing:
                                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1),
                                            )),
                                      ]))),
                            ]))),
                    Positioned(
                        top: 620,
                        left: 23,
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
                                  left: 40,
                                  child: Container(
                                      width: 237,
                                      height: 40,
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                            top: 0,
                                            left: 0,
                                            child: InkWell(
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            Trade2()));
                                              },
                                              child: Container(
                                                  width: 237,
                                                  height: 40,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(5),
                                                      topRight:
                                                          Radius.circular(5),
                                                      bottomLeft:
                                                          Radius.circular(5),
                                                      bottomRight:
                                                          Radius.circular(5),
                                                    ),
                                                    color: Color.fromRGBO(
                                                        81, 163, 163, 1),
                                                  ),
                                                  child: Stack(
                                                      children: <Widget>[
                                                        Positioned(
                                                            top: 11,
                                                            left: 85,
                                                            child: Text(
                                                              'SUBMIT ',
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: TextStyle(
                                                                  color: Color.fromRGBO(
                                                                      13,
                                                                      14,
                                                                      14,
                                                                      1),
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 14,
                                                                  letterSpacing:
                                                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  height: 1),
                                                            )),
                                                      ])),
                                            )),
                                      ]))),
                            ]))),
                  ]))
            ],
          ),
        ),
      ),
    );
  }
}
