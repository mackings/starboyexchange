import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:shared_preferences/shared_preferences.dart';
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

  

  final secret = ('hfucj5jatq8h');
  String bearer = ('uvjqzm5xl6bw');

  dynamic walletdata;
  String? walletBalance;
  dynamic result;
  


  //var walletcreate = 'https://api.getwallets.co/v1/wallets/61d7d276ea5aa2f41200889b';
  String getbearer = 'sk_live_61d69f09ea5aa2f41200885961d69f09ea5aa2f41200885a';

  static get $balanceurl => null;
  dynamic walletid;

  static get $walletid => null;
  
  dynamic walletid1;

  ViewHivedata() async {
    await Hive.openBox("user");
    final walletid1 = Hive.box('user').get('walletid');


    print("Got  View Datas ");
    print(walletid1);

    setState(() {
      admincontroller.text = walletid1;

    });
  }

  

  Future getuserbalance() async {
    var balanceurl = ('https://api.getwallets.co/v1/wallets/${admincontroller.text}');


    var response = await http.get(
      Uri.parse(balanceurl),
      headers: {
        "Content-Type": "application/json",
        //"Accept": "application/json",
        "Authorization": "Bearer $getbearer",
      },
    );

    if (response.statusCode == 200) {

      walletdata = json.decode(response.body);
      //print(walletdata["data"]['balances'][0]['balance']);
  
     setState(() {

      walletBalance = '${walletdata['data']['balances'][0]['balance']}';


      });


     // print('user balance is $walletBalance');
    } else {
      print(response.statusCode);
    }
  }

  SavebalancetoHivedb() async {
    await Hive.openBox('user');

    var box = Hive.box('user');
    box.put('walletBalance', walletBalance);
    print(box.get('walletBalance'));
    //print(prefs.getString('walletBalance' + 'From SharedPreferences'));
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
                  //  child: Text(
                  // walletBalance == null
                  //   ? "Balance: N ****  "
                  //   : "Main Balance : N $walletBalance",
                  // style: TextStyle(
                  //  color: Colors.white,
                  // fontSize: 20,
                  // fontFamily: "Montserrat",
                  //  ),
                  // ),
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
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  hintText: "Enter Wallet ID",
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
                              'Check Balance (Twice)',
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
                  height: 10,
                ),
                SizedBox(
                  height: 10,
                ),

                SizedBox(
                  height: 15,
                ),
                //loginbtn
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        ViewHivedata();
                        getuserbalance();

                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text(
                                  "Wallet Balance",
                                  style: TextStyle(
                                      fontFamily: "Montserrat",
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                content: Text(
                                  "Your Wallet Balance is N  $walletBalance" == null?
                                       "Balance: N ****  "
                                      : "Main Balance : N $walletBalance",
                                  style: TextStyle(
                                      fontFamily: "Montserrat",
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                actions: <Widget>[
                                  FlatButton(
                                    child: Text(
                                      "Close",
                                      style: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  )
                                ],
                              );
                            });

                         SavebalancetoHivedb();
                      },
                      child: Container(
                          width: 156.1904754638672,
                          height: 40,
                          child: Stack(children: <Widget>[
                            Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                    width: 150.1904754638672,
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
                                      Center(
                                        child: Text(
                                          'View  Balance',
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
                                        ),
                                      ),
                                    ]))),
                          ])),
                    ),
                    GestureDetector(
                      onTap: () {
                        getuserbalance();

                        SavebalancetoHivedb();
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
                                      Center(
                                        child: Text(
                                          'Save My Balance',
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
                                        ),
                                      ),
                                    ]))),
                          ])),
                    ),
                  ],
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
