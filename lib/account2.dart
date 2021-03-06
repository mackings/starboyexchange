
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:starboyexchange/account1.dart';
import 'package:starboyexchange/login.dart';
import 'package:starboyexchange/mainui.dart';

import 'account3.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import "package:sizer/sizer.dart";




class Account2 extends StatefulWidget {
  const Account2({Key ?key}) : super(key: key);

  @override
  _Account2State createState() => _Account2State();
}

class _Account2State extends State<Account2> {
  bool value = false;

  TextEditingController Accountnum = TextEditingController();
  TextEditingController Accountname = TextEditingController();
  TextEditingController Bankname = TextEditingController();



  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: green,


        body: SingleChildScrollView(
          child: Center(
            child: Column(

              children: [
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Add Payment Method', textAlign: TextAlign.left, style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontFamily: 'Montserrat',
                        fontSize: 14,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.bold,
                        height: 1
                    ),),
                    SizedBox(
                      width: 120,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                      },
                      child: Text('Skip ', textAlign: TextAlign.left, style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.bold,
                          height: 1
                      ),),
                    ),
                    Icon(Icons.chevron_right,color: Colors.white,),
                  ],
                ),
                SizedBox(
                  height: 13,
                ),
                Text('You can skip this step and do it later', textAlign: TextAlign.center, style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1
                ),),
                SizedBox(
                  height: 8,
                ),
                Image.asset("assets/card.png",width: 250,height: 150,),
                //selectcurrency
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                      width: 312,
                      height: 80,

                      child: Stack(
                          children: <Widget>[
                            Positioned(
                              top: 24,
                              left: 0,
                              child: Container(
                                width: 312,
                                height: 55,
                                decoration: BoxDecoration(
                                  borderRadius : BorderRadius.only(
                                    topLeft: Radius.circular(5),
                                    topRight: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                    bottomRight: Radius.circular(5),
                                  ),
                                  color : Color.fromRGBO(13, 13, 13, 0.5099999904632568),
                                  border : Border.all(
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    width: 1,
                                  ),
                                ),
                                child: DropdownSearch<String>(
                                  popupBackgroundColor: Colors.white,
                                  popupBarrierColor: green,
                                  items: ["Naira", "Dollar", "Euros", 'Btc',"Yen"],
                                  popupItemDisabled: (String s) => s.startsWith('B'),

                                ),
                              ),
                            ),
                            Positioned(
                                top: 0,
                                left: 0,
                                child: Text('Select Currency', textAlign: TextAlign.left, style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Montserrat',
                                    fontSize: 15,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.bold,
                                    height: 1
                                ),)
                            ),
                          ]
                      )
                  ),
                ),
                //selectbank
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                      width: 312,
                      height: 70,

                      child: Stack(
                          children: <Widget>[
                            Positioned(
                              top: 24,
                              left: 0,
                              child: Container(
                                width: 312,
                                height: 45,
                                decoration: BoxDecoration(
                                  borderRadius : BorderRadius.only(
                                    topLeft: Radius.circular(5),
                                    topRight: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                    bottomRight: Radius.circular(5),
                                  ),
                                  color : Color.fromRGBO(13, 13, 13, 0.5099999904632568),
                                  border : Border.all(
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    width: 1,
                                  ),
                                ),
                                child: TextFormField(
                                  controller: Bankname,
                                  textAlign: TextAlign.start,
                                  cursorColor: Colors.black,
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    hintText: "Standard Chartered Bank",hintStyle: TextStyle(color: inputcolor,fontFamily:"Montserrat",fontSize: 12),
                                    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                                top: 0,
                                left: 0,
                                child: Text('Enter Bank Name', textAlign: TextAlign.left, style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Montserrat',
                                    fontSize: 15,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.bold,
                                    height: 1
                                ),)
                            ),
                          ]
                      ),
                  ),
                ),
                //accountnum
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                      width: 312,
                      height: 74,

                      child: Stack(
                          children: <Widget>[
                            Positioned(
                              top: 24,
                              left: 0,
                              child: Container(
                                width: 312,
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius : BorderRadius.only(
                                    topLeft: Radius.circular(5),
                                    topRight: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                    bottomRight: Radius.circular(5),
                                  ),
                                  color : Color.fromRGBO(13, 13, 13, 0.5099999904632568),
                                  border : Border.all(
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    width: 1,
                                  ),
                                ),
                                child: Stack(
                                    children: <Widget>[
                                     //accountcontroller
                                      TextFormField(
                                        controller: Accountnum,
                                        textAlign: TextAlign.start,
                                        cursorColor: Colors.black,
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          enabledBorder: InputBorder.none,
                                          errorBorder: InputBorder.none,
                                          disabledBorder: InputBorder.none,
                                          hintText: "Enter Account Number Here",hintStyle: TextStyle(color: inputcolor, fontFamily:"Montserrat",fontSize: 12
                                        ),
                                          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                                        ),
                                      ),

                                    ]
                                ),
                              ),
                            ),

                            Positioned(
                                top: 0,
                                left: 0,
                                child: Text('Enter Account Number', textAlign: TextAlign.left, style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Montserrat',
                                    fontSize: 15,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.bold,
                                    height: 1
                                ),)
                            ),
                          ]
                      )
                  ),
                ),

                //accountname
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                      width: 312,
                      height: 74,

                      child: Stack(
                          children: <Widget>[
                            Positioned(
                              top: 24,
                              left: 0,
                              child: Container(
                                width: 312,
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius : BorderRadius.only(
                                    topLeft: Radius.circular(5),
                                    topRight: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                    bottomRight: Radius.circular(5),
                                  ),
                                  color : Color.fromRGBO(13, 13, 13, 0.5099999904632568),
                                  border : Border.all(
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    width: 1,
                                  ),
                                ),
                                child: Stack(
                                    children: <Widget>[
                                      //accountcontroller
                                      TextFormField(
                                        controller: Accountname,
                                        textAlign: TextAlign.start,
                                        cursorColor: Colors.black,
                                        keyboardType: TextInputType.text,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          enabledBorder: InputBorder.none,
                                          errorBorder: InputBorder.none,
                                          disabledBorder: InputBorder.none,
                                          hintText: "Mac Kingsley Tiago",hintStyle: TextStyle(color: inputcolor,fontFamily:"Montserrat",fontSize: 12),
                                          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                                        ),
                                      ),

                                    ]
                                ),
                              ),
                            ),Positioned(
                                top: 0,
                                left: 0,
                                child: Text('Enter Account Name', textAlign: TextAlign.left, style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Montserrat',
                                    fontSize: 15,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.bold,
                                    height: 1
                                ),)
                            ),
                          ]
                      )
                  ),
                ),
                //checkbox
                Row(

                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      color: green,
                    ),
                   Checkbox(
                       value: value, onChanged: (value){
                         setState(() {
                           this.value = value!;
                         });
                   },
                   ),
                    Text('Make This Account Default', textAlign: TextAlign.start, style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontFamily: 'Montserrat',
                        fontSize: 12,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1
                    ),)
                  ],
                ),
                //donebutton
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: (){
                      FirebaseFirestore.instance.collection(" Bank Accounts").add({
                        "Account Name":Accountname.text,
                        "Account Number":Accountnum.text,
                        "Bank Name": Bankname.text,
                        "Date Added": DateTime.now(),
                      });

                    
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Login()));
                    },
                    child: Container(
                        width: 156.1904754638672,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius : BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5),
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(5),
                          ),
                          color : Color.fromRGBO(229, 229, 229, 1),
                        ),
                        child: Stack(
                            children: <Widget>[
                              Positioned(
                                  top: 14,
                                  left: 60,
                                  child: Center(
                                    child: Text('DONE', textAlign: TextAlign.left, style: TextStyle(
                                        color: Color.fromRGBO(13, 14, 14, 1),
                                        fontFamily: 'Montserrat',
                                        fontSize: 14,
                                        letterSpacing: 0 ,
                                        fontWeight: FontWeight.bold,
                                        height: 1
                                    ),),
                                  )
                              ),
                            ]
                        )
                    ),
                  ),
                ),





              ],
            ),
          ),
        ),

      ),
    );
  }
}
