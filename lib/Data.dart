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

class status extends ChangeNotifier{
  String state1 = "Approved";
  String get state=> state1;
   void change(){
    

   }

}

