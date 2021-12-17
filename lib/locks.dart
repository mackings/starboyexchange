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
import 'package:starboyexchange/Administrative.dart';

class Locks extends StatefulWidget {
  const Locks({Key? key}) : super(key: key);

  @override
  _LocksState createState() => _LocksState();
}

class _LocksState extends State<Locks> {
  TextEditingController _code = TextEditingController();
  final code = 00000;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Enter Admin Auth Code',
                style: GoogleFonts.lato(
                  textStyle: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              TextFormField(
                controller: _code,
                decoration: InputDecoration(
                  hintText: 'Enter Code',
                  hintStyle: GoogleFonts.lato(
                    textStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                ),
                style: GoogleFonts.lato(
                  textStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () async {
                  if (_code.text == code) {
                   // SharedPreferences prefs =
                    ////    await SharedPreferences.getInstance();
                    //prefs.setBool('admin', true);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Administrative(),
                      ),
                    );
                  } else {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Administrative(),
                      ),
                    );
                  }
                },
                child: Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'Submit',
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
