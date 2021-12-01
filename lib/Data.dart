// ignore: file_names
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Data extends ChangeNotifier {
  String value() {
    return "Hi Provider";
  }
}

class Users extends ChangeNotifier {
  int cards = 0;
  int get card => cards;
  void updatecards() {
    cards++;
    notifyListeners();
  }
}

class Usernames with ChangeNotifier {
  final String _myusername = "";
  String get myusername => _myusername;
  set myusername(String _myusername) {
    _myusername = myusername;
    notifyListeners();
  }
}


// ignore: camel_case_types
class pictures extends ChangeNotifier {
  static String? get profilephotos => null;


  Future getprofile() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var profilephotos = prefs.getString('url');
    notifyListeners();
  }
  final String _mypicture = profilephotos!;

  String get mypicture => _mypicture;
  set mypicture(String _mypicture) {
    _mypicture = mypicture;

    notifyListeners();
  }
}
