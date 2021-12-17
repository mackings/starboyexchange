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

  // ignore: non_constant_identifier_names
  dynamic Histories;
  dynamic noHistories;
  dynamic creditamount;
  dynamic credittype;
  dynamic Conv;
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
          "dateFrom": "2021-12-14",
          "dateTo": "2021-12-19",
          "transactionType": 0,
          "secretKey": 'hfucj5jatq8h',
          "currency": "NGN",
        },
      ),
    );

    if (response.statusCode == 200) {
      var data = json.decode(response.body)['data'];
      setState(() {
        Histories = '${data['transactions'][0]['type']}';
        noHistories = '${data['transactions'][0]['amount']}';
        if (Histories== null && noHistories == null) {
          Histories = 'No Transactions';
          noHistories = 'No Transactions';


        } else {
          Histories = '${data['transactions'][0]['type']}';
          noHistories = '${data['transactions'][0]['amount']}';
        }
          
        
       

        print(Histories);
        print(noHistories);
    
      });
    } else {
      throw Exception('Failed to load post');
    }
  }

  
  Future getusercredit() async {
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
          "dateFrom": "2021-12-14",
          "dateTo": "2021-12-31",
          "transactionType": 1,
          "secretKey": 'hfucj5jatq8h',
          "currency": "NGN",
        },
      ),
    );

    if (response.statusCode == 200) {
      var data = json.decode(response.body)['data'];
      setState(() {
       credittype= '${data['transactions'][0]['type']}';
        creditamount = '${data['transactions'][0]['amount']}';
        if (Histories== null && noHistories == null) {
          creditamount = 'No Transactions';
         credittype = 'No Transactions';


        } else {
          credittype = '${data['transactions'][0]['type']}';
         creditamount = '${data['transactions'][0]['amount']}';
        }
          
        
       

        print(creditamount);
        print(credittype);
    
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
              mainAxisAlignment: MainAxisAlignment.center,
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
                  width: 85,
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
                      child: Icon(Icons.sync, color: Colors.white)),
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
                    hintText: 'Enter Wallet ID',
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 20,
                  ),

                   Center(
                     child: Container(
                      width: MediaQuery.of(context).size.width - 300,
                      height: MediaQuery.of(context).size.height - 600,
                      child: Center(
                        child: Text(
                          Histories== null ? '***' : '$noHistories',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                      )
                  ),
                   ),
               

                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width - 300,
                      height: MediaQuery.of(context).size.height - 600,
                      child: Center(
                        child: Text(
                          Histories== null ? '***' : '$Histories',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                      )
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 30,
            ),
            //yo

             Container(
              height: MediaQuery.of(context).size.height - 600,
              width: MediaQuery.of(context).size.width - 30,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 20,
                  ),

                   Center(
                     child: Container(
                      width: MediaQuery.of(context).size.width - 300,
                      height: MediaQuery.of(context).size.height - 600,
                      child: Center(
                        child: Text(
                          creditamount== null ? '***' : '$creditamount',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                      )
                  ),
                   ),
               

                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width - 300,
                      height: MediaQuery.of(context).size.height - 600,
                      child: Center(
                        child: Text(
                          credittype== null ? '***' : '$credittype',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                      )
                    ),
                  ),
                ],
              ),
            ),




          ]),
        ),
      ),
    );
  }
}
