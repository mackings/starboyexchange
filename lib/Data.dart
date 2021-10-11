import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

 class Data extends ChangeNotifier{
   String value(){
     return "Hi Provider";
     notifyListeners();
   }
 }

 class Users extends ChangeNotifier{
   int cards = 0;
   int get card=> cards;
   void updatecards(){
     cards++;
     notifyListeners();

   }
 }
 class Usernames with ChangeNotifier{
   String _myusername = "";
   String get myusername => _myusername;
   set myusername( String _myusername){
     _myusername = myusername;
     notifyListeners();
   }

 }




