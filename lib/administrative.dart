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

class Administrative extends StatefulWidget {
  const Administrative({Key? key}) : super(key: key);

  @override
  _AdministrativeState createState() => _AdministrativeState();
}

class _AdministrativeState extends State<Administrative> {
  TextEditingController admincontroller = TextEditingController();
  TextEditingController Amountcontroller = TextEditingController();
  TextEditingController creditnumcontroller = TextEditingController();
  TextEditingController creditamountcontroller = TextEditingController();
  TextEditingController debitnumcontroller = TextEditingController();
  TextEditingController debitamountcontroller = TextEditingController();
  TextEditingController transactionref = TextEditingController();
  TextEditingController debitref = TextEditingController();
  TextEditingController balancecontroller = TextEditingController();

  final balanceurl = ("https://sandbox.wallets.africa/wallet/balance");
  final crediturl = ("https://sandbox.wallets.africa/wallet/credit");
  //final debiturl = ("https://sandbox.wallets.africa/wallet/debit");

  final secret = ('hfucj5jatq8h');
  String bearer = ('uvjqzm5xl6bw');

  dynamic alldata;
  dynamic walletBalance;

  var fundurl = 'https://api.getwallets.co/v1/wallets/funds/manual';
  var debiturl = 'https://api.getwallets.co/v1/wallets/debit/manual';
  var cbalanceurl = 'https://api.getwallets.co/v1/wallets/';
  var getbearer = 'sk_live_61d69f09ea5aa2f41200885961d69f09ea5aa2f41200885a';

  dynamic result;
  dynamic demwallet;
  dynamic dembalance;

  Future fwallet() async {
    var response = await http.post(Uri.parse(fundurl),
        headers: {
          'Authorization': 'Bearer $getbearer',
          'Content-Type': 'application/json',
          "Accept": "application/json"
        },
        //body
        body: jsonEncode({
          'wallet_id': creditnumcontroller.text,
          'amount': 1000,
          'currency': 'NGN',
        }));

    if (response.statusCode == 200) {
      result = json.decode(response.body);

      print(result);

      setState(() {
        // demwallet = '${result['data']['wallet_id']}';
        //  dembalance = '${result['data']['balance']}';
      });
      // print(demwallet);
      // print('user balance is $dembalance');
    } else {
      throw Exception('Failed ');
    }
  }

  Future dwallet() async {
    var response = await http.post(Uri.parse(debiturl),
        headers: {
          'Authorization': 'Bearer $getbearer',
          'Content-Type': 'application/json',
          "Accept": "application/json"
        },
        //body
        body: jsonEncode({
          'wallet_id': debitnumcontroller.text,
          'amount': 1000,
          'currency': 'NGN',
        }));

    if (response.statusCode == 200) {
      result = json.decode(response.body);

      print(result);

      setState(() {
        // demwallet = '${result['data']['wallet_id']}';
        //  dembalance = '${result['data']['balance']}';
      });
      // print(demwallet);
      // print('user balance is $dembalance');
    } else {
      print(response.statusCode);
    }
  }

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
      var data = json.decode(response.body)['data'];
      setState(() {
        walletBalance = '${data['walletBalance']}';
      });
    } else {
      throw Exception('Failed to load post');
    }
  }

  SavebalancetoHivedb() async {
    await Hive.openBox('user');

    var box = Hive.box('user');
    box.put('walletBalance', walletBalance);
    print(box.get('walletBalance'));
    //print(prefs.getString('walletBalance' + 'From SharedPreferences'));
  }

  Credituser() async {
    var credit = await http.post(
      Uri.parse(crediturl),
      headers: {
        "Content-Type": "application/json",
        "Accept": "application/json",
        "Authorization": "Bearer $bearer",
      },
      body: jsonEncode(
        {
          "transactionReference": transactionref.text,
          "amount": 1000.0,
          "phoneNumber": creditnumcontroller.text,
          "secretKey": "hfucj5jatq8h"
        },
      ),
    );

    if (credit.statusCode == 200) {
      var data = json.decode(credit.body)['data'];
      print(data);
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text(
                  'User Credited Successfully',
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                actions: [
                  FlatButton(
                    child: Text(
                      'okay',
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ));
    } else {
      print(credit.statusCode);

      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text(
                  'Transaction Failed',
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                actions: [
                  FlatButton(
                    child: Text(
                      'Retry',
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                      Credituser();
                    },
                  ),
                ],
              ));
    }
  }

  Future Debituser() async {
    var debit = await http.post(
      Uri.parse(debiturl),
      headers: {
        "Content-Type": "application/json",
        "Accept": "application/json",
        "Authorization": "Bearer $bearer",
      },
      body: jsonEncode(
        {
          "transactionReference": debitref.text,
          "amount": 100.0,
          "phoneNumber": debitnumcontroller.text,
          "secretKey": "hfucj5jatq8h"
        },
      ),
    );

    if (debit.statusCode == 200) {
      var data = json.decode(debit.body)['data'];
      print(data);
    }
  }

  dynamic walletdata;
  Future Fetchuserbalance() async {
    var balanceurl =
        ('https://api.getwallets.co/v1/wallets/${balancecontroller.text}');

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

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    /// getuserbalance();
    // Debituser();
  Fetchuserbalance();
    fwallet();
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

                SizedBox(
                  height: 5,
                ),
                Text(
                  'Credit User',
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.all(20),
                  child: TextField( 
                    keyboardType: TextInputType.number,
                    controller: creditnumcontroller,
                    decoration: InputDecoration(
                      hintText: 'Enter User Wallet ID',
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 5,
                ),

                Container(
                  margin: EdgeInsets.all(20),
                  child: TextField(
                    controller: transactionref,
                    decoration: InputDecoration(
                      hintText: 'EnterTranction Reference',
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: TextField(
                    controller: creditamountcontroller,
                    decoration: InputDecoration(
                      hintText: 'Enter Amount',
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    if (creditnumcontroller.text.isEmpty) {
                      Fluttertoast.showToast(
                        msg: "Please Enter Wallet ID",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0,
                      );
                    } else if (creditamountcontroller.text.isEmpty) {
                      Fluttertoast.showToast(
                        msg: "Please Enter Amount",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0,
                      );
                    } else {
                      // Credituser();
                      fwallet().whenComplete(() => showDialog(context: context, builder: (context) => AlertDialog(
                        title: Text(
                          'User Credited Successfully',
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        actions: [
                          FlatButton(
                            child: Text(
                              'Ok',
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      )));
                    }
                  },
                  child: Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width - 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text('Credit ',
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                    ),
                  ),
                ),

                SizedBox(
                  height: 30,
                ),

                //debit
                Text(
                  'Debit User',
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.all(20),
                  child: TextField(
                    controller: debitref,
                    decoration: InputDecoration(
                      hintText: 'Enter Reference number',
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.all(20),
                  child: TextField(
                    controller: debitnumcontroller,
                    decoration: InputDecoration(
                      hintText: 'Enter User Wallet ID',
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.all(20),
                  child: TextField(
                    controller: debitamountcontroller,
                    decoration: InputDecoration(
                      hintText: 'Enter Amount',
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (debitnumcontroller.text.isEmpty) {
                      Fluttertoast.showToast(
                        msg: "Please Enter Phone Number",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0,
                      );
                    } else if (debitamountcontroller.text.isEmpty) {
                      Fluttertoast.showToast(
                        msg: "Please Enter Amount",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0,
                      );
                    } else {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                title: Text(
                                  'Are you sure you want to Debit this user?',
                                  style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                actions: [
                                  FlatButton(
                                    child: Text(
                                      'Yes',
                                      style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    onPressed: () {
                                      dwallet().then((value) => {
                                            Navigator.pop(context),
                                            Fluttertoast.showToast(
                                              msg: "User Debit Successfully",
                                              toastLength: Toast.LENGTH_LONG,
                                              gravity: ToastGravity.BOTTOM,
                                              timeInSecForIosWeb: 1,
                                              backgroundColor: Colors.red,
                                              textColor: Colors.white,
                                              fontSize: 16.0,
                                            )
                                          });
                                      // Navigator.pop(context);
                                    },
                                  ),
                                  FlatButton(
                                    child: Text(
                                      'No',
                                      style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ],
                              ));
                    }
                  },
                  child: Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width - 40,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text('Debit ',
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                    ),
                  ),
                ),

                SizedBox(
                  height: 30,
                ),

                Text(
                  'View User Balance',
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  walletBalance == null ? 'Loading...' : walletBalance,
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: TextField(
                    controller: balancecontroller,
                    decoration: InputDecoration(
                      hintText: 'Enter User Wallet ID',
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    Fetchuserbalance();
                  },
                  child: Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width - 40,
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text('View Balance ',
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
