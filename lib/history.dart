import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:starboyexchange/account1.dart';
import 'package:starboyexchange/history2.dart';
import 'package:starboyexchange/mainui.dart';
import 'package:starboyexchange/withdraw.dart';
import 'package:http/http.dart' as http;

class History1 extends StatefulWidget {
  const History1({Key? key}) : super(key: key);

  @override
  _History1State createState() => _History1State();
}

class _History1State extends State<History1> {
  final balanceurl = ("https://sandbox.wallets.africa/wallet/transactions");
  final secret = ('hfucj5jatq8h');
  String bearer = ('uvjqzm5xl6bw');

  dynamic Histories;
  dynamic noHistories;
  String? walletHistory;

  Future getuserhistory() async {
    var response = await http.post(
      Uri.parse(balanceurl),
      headers: {
        "Content-Type": "application/json",
        "Accept": "application/json",
        "Authorization": "Bearer $bearer",
      },
      body: jsonEncode(
        {
          "phoneNumber": historycontroller.text,
          "skip": 0,
  "take": 10,
  "dateFrom": "2021-12-15",
  "dateTo": "2021-12-16",
  "transactionType": 1,
          "secretKey": 'hfucj5jatq8h',
          "currency": "NGN",
        },
      ),
    );

    if (response.statusCode == 200) {
      var data = json.decode(response.body)['data'];
      setState(() {
        Histories = '${data['transactions'][0]['type']}';
        noHistories = '${data['transactions'][0]['newBalance']}';

        print(Histories);
        print(noHistories);
      });
    } else {
      throw Exception('Failed to load post');
    }
  }

  TextEditingController historycontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: green,
        body: SingleChildScrollView(
          child: Column(children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, left: 20.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 75,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, right: 20.0),
                  child: Text(
                    'History',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, right: 20.0),
                  child: GestureDetector(
                      onTap: () {
                        getuserhistory();
                      },
                      child: Icon(Icons.message, color: Colors.white)),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: MediaQuery.of(context).size.height - 600,
              width: MediaQuery.of(context).size.width - 30,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: TextFormField(
                  controller: historycontroller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter Wallet Number',
                    hintStyle: TextStyle(
                      fontFamily: 'Montserrat',
                      color: green,
                      fontSize: 15,
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),


           
                          
          ]
          ),
        ),
      ),
    );
  }
}
