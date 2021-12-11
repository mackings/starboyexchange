import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:starboyexchange/history.dart';
import 'package:starboyexchange/introsliders.dart';
import 'dart:math' as math;
import 'package:flutter_svg/svg.dart';
import 'package:starboyexchange/rate2.dart';
import 'package:starboyexchange/withdraw.dart';

import 'mainui.dart';

late final Rusername;
late final Remail;

class Rate1 extends StatefulWidget {
  const Rate1({Key? key}) : super(key: key);

  @override
  _Rate1State createState() => _Rate1State();
}

class _Rate1State extends State<Rate1> {
  String defaultrate = "0";

  TextEditingController profilename = TextEditingController();
  TextEditingController profileemail = TextEditingController();
  TextEditingController profileusername = TextEditingController();
  TextEditingController profilenumber = TextEditingController();
  TextEditingController Amount = TextEditingController();

  var frate = 180;
  var xresult = 0;

  autocal() {
    xresult = frate * int.parse(Amount.text);
    print(xresult);
  }

  //usehiveimages() async {
  //  Hive.openBox("ppics");
  //  String userurl = Hive.box('ppics').get('url');
  //  print(userurl);
 /// }

//final userurl = Hive.box('ppics').get('url');

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
                   // Positioned(
                      //  top: 35,
                      //  left: 298,
                       // child: Container(
                       //     width: 40,
                       //     height: 40,
                           /// decoration: BoxDecoration(
                           //   border: Border.all(
                            //    color: Color.fromRGBO(81, 163, 163, 1),
                            //    width: 1,
                            //  ),
                              //image: DecorationImage(
                                //  image: NetworkImage(
                                    //userurl.toString(),
                                //  ),
                                 // fit: BoxFit.fitWidth),
                             // borderRadius:
                                //  BorderRadius.all(Radius.elliptical(40, 40)),
                           // ))),
                    Positioned(
                        top: 37,
                        left: 109,
                        child: Text(
                          'Rate Calculator',
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
                        top: 42.28997802734375,
                        left: 30,
                        child: Container(
                            width: 22.6119384765625,
                            height: 15.903846740722656,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                      width: 22.6119384765625,
                                      height: 15.903846740722656,
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                          top: 0,
                                          left: 0,
                                          child: InkWell(
                                            onTap: () {
                                              Navigator.pop(context);
                                            },
                                            child: SvgPicture.asset(
                                              'assets/arrowleft.svg',
                                              semanticsLabel: 'vector',
                                              color: Colors.white,
                                              height: 20,
                                              width: 20,
                                            ),
                                          ),
                                        ),
                                      ]))),
                            ]))),
                    Positioned(
                        top: 82.29046630859375,
                        left: 30,
                        child: Container(
                            width: 22.6119384765625,
                            height: 15.903846740722656,
                            child: Stack(children: <Widget>[]))),
                    Positioned(
                        top: 117,
                        left: 22,
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
                                          68, 77, 77, 0.5099999904632568),
                                      border: Border.all(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        width: 1,
                                      ),
                                    ),
                                    child: DropdownSearch<String>(
                                      popupBackgroundColor: green,
                                      popupBarrierColor: green,
                                      items: [
                                        "Amazon",
                                        "Walmart",
                                        "Visa",
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
                                          s.startsWith('I'),
                                    ),
                                  )),
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Text(
                                    'Select Category',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        fontFamily: 'Montserrat',
                                        fontSize: 14,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1),
                                  )),
                            ]))),
                    Positioned(
                        top: 200,
                        left: 22,
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
                                    child: DropdownSearch<String>(
                                      popupBackgroundColor: green,
                                      popupBarrierColor: green,
                                      items: [
                                        "Amazon",
                                        "Walmart",
                                        "Visa",
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
                                          s.startsWith('u'),
                                    ),
                                  )),
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Text(
                                    'Select Sub - Category',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        fontFamily: 'Montserrat',
                                        fontSize: 14,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1),
                                  )),
                            ]))),
                    Positioned(
                        top: 370,
                        left: 22,
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
                                    child: DropdownSearch<String>(
                                      popupBackgroundColor: green,
                                      popupBarrierColor: green,
                                      items: ["NAIRA"],
                                      popupItemDisabled: (String s) =>
                                          s.startsWith('u'),
                                    ),
                                  )),
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Text(
                                    'Select Currency',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        fontFamily: 'Montserrat',
                                        fontSize: 14,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1),
                                  )),
                            ]))),
                    Positioned(
                        top: 285,
                        left: 22,
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
                                      child: Stack(children: <Widget>[
                                        TextFormField(
                                          controller: Amount,
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
                                      ]))),
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Text(
                                    'Enter Amount',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        fontFamily: 'Montserrat',
                                        fontSize: 14,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1),
                                  )),
                            ]))),
                    Positioned(
                        top: 460,
                        left: 20,
                        child: Container(
                            width: 316,
                            height: 103,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
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
                                        color: Color.fromRGBO(
                                            81, 163, 163, 0.8999999761581421),
                                      ),
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                            top: 13,
                                            left: 25,
                                            child: Container(
                                                width: 139,
                                                height: 77,
                                                child: Stack(children: <Widget>[
                                                  Positioned(
                                                      top: 0,
                                                      left: 0,
                                                      child: Text(
                                                        'You entered ${Amount.text}',
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromRGBO(
                                                                    196,
                                                                    196,
                                                                    196,
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
                                                  Positioned(
                                                      top: 29,
                                                      left: 0,
                                                      child: Text(
                                                        "${xresult}",
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromRGBO(
                                                                    255,
                                                                    255,
                                                                    255,
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
                                                  Positioned(
                                                      top: 58,
                                                      left: 0,
                                                      child: Text(
                                                        'Total: ${xresult}',
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromRGBO(
                                                                    255,
                                                                    255,
                                                                    255,
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
                                                ]))),
                                      ]))),
                            ]))),
                    Positioned(
                        top: 580,
                        left: 60,
                        child: InkWell(
                          onTap: () {
                            //usehiveimages();
                            setState(() {
                              var myresult = xresult;
                            });
                            autocal();
                            //Navigator.push(context, MaterialPageRoute(builder: (context)=>Rate2()));
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
                                    left: 74,
                                    child: Text(
                                      'CALCULATE',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromRGBO(13, 14, 14, 1),
                                          fontFamily: 'Montserrat',
                                          fontSize: 14,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                              ])),
                        )),
                    Positioned(
                        top: 630,
                        left: 26,
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
                                          child: InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          Mainui()));
                                            },
                                            child: SvgPicture.asset(
                                                'assets/home.svg',
                                                semanticsLabel: 'vector'),
                                          ),
                                        ),
                                        Positioned(
                                            top: 28,
                                            left: 0,
                                            child: Text(
                                              'Home',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: Colors.black,
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
                                                            color: Colors.black,
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
                                            color: Colors.black,
                                            height: 20,
                                            width: 20,
                                          ),
                                        ),
                                      ]))),
                              Positioned(
                                  top: 14,
                                  left: 173,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  History1()));
                                    },
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
                                                  child:
                                                      Stack(children: <Widget>[
                                                    Positioned(
                                                        top: 0,
                                                        left: 0,
                                                        child: Text(
                                                          'History',
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
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
                                                  child:
                                                      Stack(children: <Widget>[
                                                    Positioned(
                                                        top: 0,
                                                        left: 0,
                                                        child: Container(
                                                            width: 24,
                                                            height: 23,
                                                            child: Stack(
                                                                children: <
                                                                    Widget>[
                                                                  Positioned(
                                                                    top: 0,
                                                                    left: 0,
                                                                    child: SvgPicture
                                                                        .asset(
                                                                      'assets/search.svg',
                                                                      semanticsLabel:
                                                                          'vector',
                                                                      color: Colors
                                                                          .black,
                                                                      height:
                                                                          20,
                                                                      width: 20,
                                                                    ),
                                                                  ),
                                                                ]))),
                                                  ]))),
                                        ])),
                                  )),
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
                                                    child: InkWell(
                                                      onTap: () {
                                                        Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        Withdraw1()));
                                                      },
                                                      child: SvgPicture.asset(
                                                        'assets/atm.svg',
                                                        semanticsLabel:
                                                            'vector',
                                                        color: Colors.black,
                                                        height: 20,
                                                        width: 20,
                                                      ),
                                                    ),
                                                  ),
                                                ]))),
                                      ]))),
                            ]))),
                    Positioned(
                        top: 80,
                        left: 95,
                        child: Container(
                            width: 185,
                            height: 25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                              color: Color.fromRGBO(43, 48, 48, 1),
                            ),
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 6,
                                  left: 110,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Rate2()));
                                    },
                                    child: Text(
                                      'top 10 Cards',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                          fontFamily: 'Montserrat',
                                          fontSize: 10,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    ),
                                  )),
                            ]))),
                    Positioned(
                        top: 79,
                        left: 92,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Withdraw1()));
                          },
                          child: Container(
                              width: 103,
                              height: 25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                                color: Color.fromRGBO(81, 163, 163, 1),
                              ),
                              child: Stack(children: <Widget>[
                                Positioned(
                                    top: 6,
                                    left: 27,
                                    child: Text(
                                      'Gift card',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Color.fromRGBO(13, 14, 14, 1),
                                          fontFamily: 'Montserrat',
                                          fontSize: 10,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                              ])),
                        )),
                  ]))
            ],
          ),
        ),
      ),
    );
  }
}
