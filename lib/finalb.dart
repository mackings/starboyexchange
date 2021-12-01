import 'dart:io';

import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:starboyexchange/account1.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:starboyexchange/mainui.dart';

class Fbuy extends StatefulWidget {
  const Fbuy({Key? key}) : super(key: key);

  @override
  _FbuyState createState() => _FbuyState();
}

class _FbuyState extends State<Fbuy> {


  TextEditingController _cryptoname = TextEditingController();
  TextEditingController _walletemail = TextEditingController();
  TextEditingController _walletaddressController = TextEditingController();
  TextEditingController _phonenumber = TextEditingController();

  var _formKey = GlobalKey<FormState>();

  final Database = FirebaseDatabase.instance.reference();

  sendtrades() async{
    final storetrades = Database.child("Buyers").set(
      {
        "Crypto": _cryptoname.text,
        "Walletaddress": _walletaddressController.text,
        "WalletEmail":_walletemail.text,
        "Buyer Number": _phonenumber.text,

      },

    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: green,

        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 30,),

                  SvgPicture.asset("assets/profile.svg",height: 250,width: 250,),
                  SizedBox(height: 10,),
                  Container(
                  
                    height: 70,
                    width: 280,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: _cryptoname,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: " Enter Crypto Network",hintStyle: GoogleFonts.montserrat(color: green,),
                            suffixIcon: Icon(Icons.assessment,color: green,),

                          ),
                          validator: (value){
                            if(value==null || value.isEmpty){
                              return "Please Enter a valid crypto name";
                            }
                            return null;
                          },
                          onSaved: (value){
                            setState(() {
                              _cryptoname.text=value!;
                            });
                          },
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 10,),

                  Container(
                    height: 70,
                    width: 280,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: _walletaddressController,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: " Enter wallet Address",hintStyle: GoogleFonts.montserrat(color: green,),
                            suffixIcon: Icon(Icons.maps_ugc_sharp,color: green,),

                          ),
                          validator: (value){
                            if(value==null || value.isEmpty){
                              return "Please Enter a valid wallet Address";
                            }
                            return null;
                          },
                          onSaved: (value){
                            setState(() {
                              _cryptoname.text=value!;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  Container(
                    height: 70,
                    width: 280,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: _walletemail,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: " Enter Wallet Email Address",hintStyle: GoogleFonts.montserrat(color: green,),
                            suffixIcon: Icon(Icons.email,color: green,),

                          ),
                          validator: (value){
                            if(value==null || value.isEmpty){
                              return "Please Enter  a valid Wallet email";
                            }
                            return null;
                          },
                          onSaved: (value){
                            setState(() {
                              _walletemail.text=value!;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  Container(
                    height: 70,
                    width: 280,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: _phonenumber,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: " Enter Phone number",hintStyle: GoogleFonts.montserrat(color: green,),
                            suffixIcon: Icon(Icons.phone,color:green,),

                          ),
                          validator: (value){
                            if(value==null || value.isEmpty){
                              return "Please Enter a valid PhoneNumber";
                            }
                            return null;
                          },
                          onSaved: (value){
                            setState(() {
                              _phonenumber.text=value!;
                            });
                          },
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 10,),


                  GestureDetector(
                    onTap:(){
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            content: Text("Confirm Trade ?",style: GoogleFonts.montserrat(),),
                            actions: <Widget>[
                              FlatButton(
                                child: Text("YES",style: GoogleFonts.montserrat()),
                                onPressed: () {
                                  if(_formKey.currentState!.validate()){
                                    sendtrades();
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          title: Text("Success",style: GoogleFonts.montserrat(),),
                                          content: Text("Your Trade has been Submitted, You would be contacted soon",style: GoogleFonts.montserrat(),),
                                          actions: <Widget>[
                                            FlatButton(
                                              child: Text("Continue",style: GoogleFonts.montserrat()),
                                              onPressed: () {
                                                sendtrades();
                                               Navigator.push(context, MaterialPageRoute(builder: (context)=>Mainui()));
                                              },
                                            ),
                                            FlatButton(
                                              child: Text("Home",style: GoogleFonts.montserrat()),
                                              onPressed: () {
                                                sendtrades();
                                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Mainui()));
                                              },
                                            ),
                                          ],
                                        );
                                      },
                                    );

                                    sendtrades();

                                  }else{
                                    print("Invaid");
                                  }
                                },

                              ),
                              FlatButton(
                                child: Text("NO",style: GoogleFonts.montserrat()),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    } ,
                    child: Container(
                      height: 60,
                      width: 280,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text("Buy Now ",style: GoogleFonts.montserrat(textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                        )),),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),



      ),
    );
  }
}
