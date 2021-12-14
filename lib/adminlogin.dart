import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:starboyexchange/admin.dart';
import 'package:starboyexchange/introsliders.dart';
import 'package:starboyexchange/account1.dart';
import 'package:starboyexchange/mainui.dart';
import 'package:starboyexchange/openapp.dart';
import 'package:http/http.dart' as http;

import 'account1.dart';

class Adminlogin extends StatefulWidget {
  const Adminlogin({Key? key}) : super(key: key);

  @override
  _AdminloginState createState() => _AdminloginState();
}

class _AdminloginState extends State<Adminlogin> {
  TextEditingController admincontroller = TextEditingController();
  TextEditingController Amountcontroller = TextEditingController();

  final balanceurl = ("https://sandbox.wallets.africa/wallet/balance");
  final secret = ('hfucj5jatq8h');
  String bearer = ('uvjqzm5xl6bw');
  int? Respo;
  dynamic alldata;

  Future getuserbalance() async {
    var response = await http.post(
      Uri.parse(balanceurl),
      headers: {
        "Content-Type": "application/json",
        "Accept": "application/json",
        "Authorization": "Bearer $bearer",
      },
      body: jsonEncode(
        {
          "phoneNumber": admincontroller.text,
          "secretKey": 'hfucj5jatq8h',
          "currency": "NGN",
        },
      ),
    );

    if (response.statusCode == 200) {
      return alldata = json.decode(response.body);
    } else {
      throw Exception('Failed to load post');
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getuserbalance();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Image.asset(
                  "assets/gift.png",
                  height: 200,
                  width: 520,
                ),
                //starboy
                Text(
                  "StarBoy",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Xchange",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: FutureBuilder(
                      future: getuserbalance(),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          var data = alldata['data'];
                          return Text(
                            "Balance: ${data['walletBalance']}",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.bold,
                            ),
                          );
                        } else {
                          return Text(
                            "Balance: 0",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.bold,
                            ),
                          );
                        }
                      }),

                  //API response
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
                                  13, 13, 13, 0.5099999904632568),
                              border: Border.all(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                width: 1,
                              ),
                            ),
                            child: Stack(children: <Widget>[
                              TextFormField(
                                controller: admincontroller,
                                textAlign: TextAlign.start,
                                cursorColor: Colors.black,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  hintText: "Enter Wallet Number",
                                  hintStyle: TextStyle(
                                      color: inputcolor,
                                      fontFamily: "Montserrat",
                                      fontSize: 12),
                                  contentPadding: EdgeInsets.fromLTRB(
                                      20.0, 10.0, 20.0, 10.0),
                                ),
                              ),
                            ]),
                          ),
                        ),
                        Positioned(
                            top: 0,
                            left: 0,
                            child: Text(
                              'Wallet Balance',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontFamily: 'Montserrat',
                                  fontSize: 18,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.bold,
                                  height: 1),
                            )),
                      ])),
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
                GestureDetector(
                  onTap: () {
                    getuserbalance();
                  },
                  child: Container(
                      width: 156.1904754638672,
                      height: 40,
                      child: Stack(children: <Widget>[
                        Positioned(
                            top: 0,
                            left: 0,
                            child: Container(
                                width: 156.1904754638672,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(5),
                                    topRight: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                    bottomRight: Radius.circular(5),
                                  ),
                                  color: Color.fromRGBO(229, 229, 229, 1),
                                ),
                                child: Stack(children: <Widget>[
                                  Positioned(
                                      top: 15,
                                      left: 53,
                                      child: Text(
                                        'View  Bal',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(13, 14, 14, 1),
                                            fontFamily: 'Montserrat',
                                            fontSize: 14,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1),
                                      )),
                                ]))),
                      ])),
                ),
                //Noget account?oya register
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
