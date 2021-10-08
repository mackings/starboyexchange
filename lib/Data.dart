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

class Userstate extends ChangeNotifier{
   Userstate();
   String displaytext = "";
   String get getdisplaytext => displaytext;

   void Setdisplay( String text){
     displaytext = text;
     notifyListeners();

   }


}

