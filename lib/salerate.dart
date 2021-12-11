import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:starboyexchange/account1.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:starboyexchange/checkoutcards.dart';
import 'package:starboyexchange/trade2.dart';

import 'finalb.dart';
import 'Sellcrypto.dart';

class Salecardrate extends StatefulWidget {
  const  Salecardrate({Key? key}) : super(key: key);

  @override
  _SalecardrateState createState() => _SalecardrateState();
}

class _SalecardrateState extends State< Salecardrate> {
  //proofupload
  File? _selectedImage;
  final picker = ImagePicker();

  late String imageLink;

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _selectedImage = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

//Remote server
  RemoteConfig WALLETConfig = RemoteConfig.instance;
  Future waletconfig() async {
    bool updated = await WALLETConfig.fetchAndActivate();
    await WALLETConfig.setConfigSettings(RemoteConfigSettings(
      fetchTimeout: Duration(seconds: 60),
      minimumFetchInterval: Duration(minutes: 5),
    ));
  }

  //Database

  Uploadproof() async {
    FirebaseStorage fs = FirebaseStorage.instance;
    final reference = fs.ref();
    final picturefolder = reference.child("Proffs").child("Cards");
    picturefolder.putFile(_selectedImage!).whenComplete(() => () async {
          imageLink = await picturefolder.getDownloadURL();
          print("Hellow");
        });
  }

//Remote server
  RemoteConfig remoteConfig = RemoteConfig.instance;
  Future Activate() async {
    bool updated = await remoteConfig.fetchAndActivate();
    await remoteConfig.setConfigSettings(RemoteConfigSettings(
      fetchTimeout: Duration(seconds: 60),
      minimumFetchInterval: Duration(minutes: 5),
    ));
    if (updated) {
      //actions

    } else {
      //reverseacions

    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: green,
       // backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Container(
           
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height +200 ,
            child: Column(
              children: [
                SizedBox(
                  height: 70,
                ),

                Text('Explore Our Giftcard Sales Rates  ',style: TextStyle(
                    color: Colors.white,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  fontSize: 18

                ),),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: GestureDetector(
                              onTap: () {
                                //activate();
                                waletconfig();
                                // _globalKey.currentState!.openDrawer();
                              },
                              child: Icon(
                                Icons.refresh,
                                color: Colors.white,
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
                //SvgPicture.asset("assets/girls.svg",height: 200, width: 200,),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 70,
                  width: 320,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "AMAZON : ",
                          style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                            color: green,
                          )),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "               ${remoteConfig.getString("bitcoin")}",
                        style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        )),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                Container(
                  height: 70,
                  width: 320,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "STEAM: ",
                          style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                            color: green,
                          )),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "                     ${remoteConfig.getString("usdt")}",
                        style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        )),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 70,
                  width: 320,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "EBAY: ",
                          style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                            color: green,
                          )),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "                        ${remoteConfig.getString("eth")}",
                        style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        )),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                Container(
                  height: 70,
                  width: 320,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "ITUNES : ",
                          style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                            color: green,
                          )),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "                      ${remoteConfig.getString("ripple")}",
                        style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        )),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 70,
                  width: 320,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "SEPHORA : ",
                          style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                color: green,
                              )),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "             ${remoteConfig.getString("cardano")}",
                        style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            )),
                      ),
                    ],
                  ),
                ),
                SizedBox(height:20),
                Container(
                  height: 70,
                  width: 320,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "STARBUCKS : ",
                          style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                color:green,
                              )),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "                ${remoteConfig.getString("stellar")}",
                        style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            )),
                      ),
                    ],
                  ),
                ),
                SizedBox(height:20),

                Container(
                  height: 70,
                  width: 320,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "CHARITY : ",
                          style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                color: green,
                              )),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "               ${remoteConfig.getString("litecoin")}",
                        style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            )),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height:20,
                ),

                GestureDetector(
                  onTap: (){
                    showDialog(
                        context: context,
                        builder: (BuildContext context){
                          return AlertDialog(
                            title: Text("Ready to Sell ?",style: GoogleFonts.montserrat(textStyle: TextStyle(color: green,fontSize: 20))),
                            content: Text("Are you sure you want to sell your Giftcard ?",style: GoogleFonts.montserrat(textStyle: TextStyle(color: Colors.black,fontSize: 20))),
                            actions: <Widget>[
                              FlatButton(
                                child: Text("Yes",style: GoogleFonts.montserrat(textStyle: TextStyle(color: green,fontSize: 20))),
                                onPressed: (){
                                 Navigator.push(context, MaterialPageRoute(builder: (context)=>Trade2()));
                                },
                              ),

                               FlatButton(
                                child: Text("No",style: GoogleFonts.montserrat(textStyle: TextStyle(color: green,fontSize: 20))),
                                onPressed: (){
                                Navigator.pop(context);
                                },
                                
                              )
                            ],
                          );
                        }
                    );
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black,
                    ),
                
                    child: Center(
                      child: Text(" Sell My Giftcard ",
                          style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ))),
                    ),
                  ),
                )

                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
