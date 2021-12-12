import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:starboyexchange/Data.dart';
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
import 'package:supabase_flutter/supabase_flutter.dart';

import 'introsliders.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hive/hive.dart';
import 'dart:io';
import 'package:provider/provider.dart';
import "package:awesome_notifications/awesome_notifications.dart";
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import "package:supabase/supabase.dart";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Directory tempDir = await getTemporaryDirectory();
  String tempPath = tempDir.path;

  Directory appDocDir = await getApplicationDocumentsDirectory();
  //final appDocPath = appDocDir.path;
  Hive.init(appDocDir.path);
  await Hive.openBox('ppics');
  
 
  
  FirebaseMessaging.onBackgroundMessage(_handler);

  //supabase
  await Supabase.initialize(
    url: "https://obrqmzctjutyobfrzpct.supabase.co",
    anonKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb2xlIjoiYW5vbiIsImlhdCI6MTYzOTA4NTMyOSwiZXhwIjoxOTU0NjYxMzI5fQ.R6GHaN4M3Z_7yD5UAnDYXNzdC27KgQxuUcNzUasGb34"
  );

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => Users()),
      ChangeNotifierProvider(create: (_) => Usernames()),
    ],
    child: const MyApp(),
  ));
  AwesomeNotifications().initialize("resource://drawable/lawson", [
    NotificationChannel(
      channelShowBadge: true,
      channelKey: "Basics",
      channelName: "Starboy",
      channelDescription: "Notifications",
      playSound: true,
      enableVibration: true,
    )
  ]);
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return Data();
      },
      child: const MaterialApp(
      
        home: Openapp(),
      ),
    );
  }
}

Future<void> _handler(RemoteMessage message) async {
  print("Notifications ${message.data}");
  AwesomeNotifications().createNotificationFromJsonData(message.data);
}
