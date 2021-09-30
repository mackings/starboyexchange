import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:starboyexchange/account1.dart';
import 'package:starboyexchange/helpandsupport.dart';
import 'package:starboyexchange/history.dart';
import 'package:starboyexchange/history2.dart';
import 'package:starboyexchange/mainui.dart';
import 'package:starboyexchange/notifications.dart';
import 'package:starboyexchange/openapp.dart';
import 'package:starboyexchange/profile.dart';
import 'package:starboyexchange/rate1.dart';
import 'package:starboyexchange/settings.dart';
import 'package:starboyexchange/testing.dart';
import 'package:starboyexchange/trade1.dart';
import 'package:starboyexchange/trade2.dart';
import 'package:starboyexchange/withdraw.dart';
import 'package:starboyexchange/withdraw2.dart';
import 'introsliders.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hive/hive.dart';
import 'dart:io';




void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Directory tempDir = await getTemporaryDirectory();
  String tempPath = tempDir.path;

  Directory appDocDir = await getApplicationDocumentsDirectory();
  //final appDocPath = appDocDir.path;
 Hive.init(appDocDir.path);
  await Hive.openBox("ProfileNames");


  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key ? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Openapp(),
    );
  }
}
