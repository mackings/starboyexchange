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
     showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("You Earn", ),
                content: Text(" N $xresult"),
                actions: <Widget>[
                  FlatButton(
                    child: Text("Close"),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  )
                ],
              );
            });

    
  }

 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Container(
                      child: Text(
                        "Rate Calculator",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Montserrat",
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Text(
                        'Select Category',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'Montserrat',
                            fontSize: 18,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 20,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                    ),
                    color: Color.fromRGBO(68, 77, 77, 0.5099999904632568),
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
                    popupItemDisabled: (String s) => s.startsWith('I'),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Text(
                        'Select Sub Category',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'Montserrat',
                            fontSize: 18,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: MediaQuery.of(context).size.width - 20,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                    ),
                    color: Color.fromRGBO(68, 77, 77, 0.5099999904632568),
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
                    popupItemDisabled: (String s) => s.startsWith('I'),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Text(
                        'Enter Amount',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'Montserrat',
                            fontSize: 18,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    width: MediaQuery.of(context).size.width - 20,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      ),
                      color: Color.fromRGBO(68, 78, 78, 0.5099999904632568),
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
                          hintStyle: TextStyle(color: Colors.teal),
                          contentPadding:
                              EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        ),
                      ),
                    ])),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Text(
                        'Select Currency',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'Montserrat',
                            fontSize: 18,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: MediaQuery.of(context).size.width - 20,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                    ),
                    color: Color.fromRGBO(68, 77, 77, 0.5099999904632568),
                    border: Border.all(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      width: 1,
                    ),
                  ),
                  child: DropdownSearch<String>(
                    popupBackgroundColor: green,
                    popupBarrierColor: green,
                    items: [
                      "Naira",
                    ],
                    popupItemDisabled: (String s) => s.startsWith('I'),
                  ),
                ),
                SizedBox(height: 30),
                GestureDetector(
                  onTap: () {
                    autocal();
                    
                  },
                  child: Container(
                    child: Center(
                      child: Text(
                        'Calculate',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Montserrat',
                            fontSize: 18,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1),
                      ),
                    ),
                    height: 70,
                    width: MediaQuery.of(context).size.width - 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: green,
                      border: Border.all(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        width: 1,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
