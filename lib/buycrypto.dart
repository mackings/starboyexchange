import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:starboyexchange/account1.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:google_fonts/google_fonts.dart';

import 'finalb.dart';
import 'Sellcrypto.dart';

class Butcrypto extends StatefulWidget {
  const Butcrypto({Key? key}) : super(key: key);

  @override
  _ButcryptoState createState() => _ButcryptoState();
}

class _ButcryptoState extends State<Butcrypto> {
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
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 70,
                ),

                Text('Explore Our Rates As They Changes ',style: TextStyle(
                    color: Colors.white,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  fontSize: 15

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
                          "BITCOIN : ",
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
                          "USDT: ",
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
                          "ETHERIUM : ",
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
                        "             ${remoteConfig.getString("eth")}",
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
                          "RIPPLE : ",
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
                        "                  ${remoteConfig.getString("ripple")}",
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
                          "CARDANO : ",
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
                          "STELLAR : ",
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
                          "LITECOIN : ",
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

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: GestureDetector(
                        onTap: () {
                          Activate();
                        },
                        child: GestureDetector(
                          onTap: () {
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>Fbuy()));
                          },
                          child: Container(
                            height: 50,
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Text(
                                "Buy",
                                style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                  color: green,
                                )),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),


                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: GestureDetector(
                        onTap: () {
                           Navigator.push(context, MaterialPageRoute(builder: (context)=> Fsell()));
                        },
                        child: Container(
                          height: 50,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black,
                          ),
                          child: Center(
                            child: Text(
                              "Sell",
                              style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                color: Colors.white,
                              )),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
