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
import 'package:selectable/selectable.dart';

class Fsell extends StatefulWidget {
  const Fsell({Key? key}) : super(key: key);

  @override
  _FsellState createState() => _FsellState();
}

class _FsellState extends State<Fsell> {
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

  //select contrioller
  //final SelectableController = SelectableController();

  //Remote server
  RemoteConfig WALLETConfig = RemoteConfig.instance;
  Future waletconfig() async {
    bool updated = await WALLETConfig.fetchAndActivate();
    await WALLETConfig.setConfigSettings(RemoteConfigSettings(
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
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 90,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Sell Your Cryptocurrencies ',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    GestureDetector(
                        onTap: () {
                          //activate();
                          waletconfig();
                          // _globalKey.currentState!.openDrawer();
                        },
                        child: Icon(
                          Icons.refresh,
                          color: Colors.white,
                        )),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                GestureDetector(
                  onTap: () {
                    waletconfig();
                  },
                  child: Container(
                    height: 70,
                    width: 340,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              "BTC Wallet ",
                              style: GoogleFonts.montserrat(
                                  textStyle: const TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontWeight: FontWeight.normal,
                              )),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Selectable(
                                selectWordOnLongPress: true,
                                showPopup: true,
                                child: Text(
                                  "${WALLETConfig.getString("btcwallet")}",
                                  style: GoogleFonts.montserrat(
                                      textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  )),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    waletconfig();
                  },
                  child: Container(
                    height: 70,
                    width: 340,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              "USDT Wallet ",
                              style: GoogleFonts.montserrat(
                                  textStyle: const TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontWeight: FontWeight.normal,
                              )),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Selectable(
                                selectWordOnLongPress: true,
                                showPopup: true,
                                child: Text(
                                  "${WALLETConfig.getString("usdtwallet")}",
                                  style: GoogleFonts.montserrat(
                                      textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  )),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    waletconfig();
                  },
                  child: Container(
                    height: 70,
                    width: 340,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              "ETH Wallet ",
                              style: GoogleFonts.montserrat(
                                  textStyle: const TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontWeight: FontWeight.normal,
                              )),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Selectable(
                                selectWordOnLongPress: true,
                                showPopup: true,
                                child: Text(
                                  "${WALLETConfig.getString("ethwallet")}",
                                  style: GoogleFonts.montserrat(
                                      textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  )),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    waletconfig();
                  },
                  child: Container(
                    height: 70,
                    width: 340,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              "CARDANO Wallet ",
                              style: GoogleFonts.montserrat(
                                  textStyle: const TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontWeight: FontWeight.normal,
                              )),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Selectable(
                                selectWordOnLongPress: true,
                                showPopup: true,
                                child: Text(
                                  "${WALLETConfig.getString("cardanowallet")}",
                                  style: GoogleFonts.montserrat(
                                      textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  )),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: GestureDetector(
                        onTap: () {
                          getImage();
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: _selectedImage == null
                              ? InkWell(
                                  onTap: () => getImage(),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 250,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[300],
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Icon(
                                      Icons.image,
                                      size: 70,
                                      color: green,
                                    ),
                                  ),
                                )
                              : InkWell(
                                  onTap: () => getImage(),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 250,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                        image: FileImage(_selectedImage!),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          "Upload Screenshot ",
                          style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            if (_selectedImage == null) {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Text("Error", style: TextStyle( fontFamily: 'Montserrat'),),
                                      content: Text("Please Upload a Transaction Recipt",style: TextStyle( fontFamily: 'Montserrat'),),
                                      actions: <Widget>[
                                        FlatButton(
                                          child: Text("Ok"),
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                        )
                                      ],
                                    );
                                  });
                            } else {

                               showDialog(
                              context: context,
                              builder: (BuildContext context){
                                return AlertDialog(
                                  content: Text("Have you screenshot your transaction ?",style: GoogleFonts.montserrat(),),
                                  actions: [
                                    MaterialButton(
                                      onPressed: (){
                                        Uploadproof();
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
                                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Mainui()));
                                                  },
                                                ),
                                                FlatButton(
                                                  child: Text("Home",style: GoogleFonts.montserrat()),
                                                  onPressed: () {
                                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Mainui()));
                                                  },
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                        //Navigator.push(context, MaterialPageRoute(builder: (context)=>TradeGround()));
                                      },
                                      child: Text("YES",style: GoogleFonts.montserrat(),),
                                    ),
                                    MaterialButton(
                                      onPressed: (){
                                        Navigator.pop(context);
                                      },
                                      child: Text("NO",style: GoogleFonts.montserrat(),),
                                    ),
                                  ],

                                );
                              },
                            );
                            }
                          },
                          child: Container(
                            height: 60,
                            width: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            child: Center(
                              child: Text(
                                "Finish Trade ",
                                style: GoogleFonts.montserrat(
                                    textStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                )),
                              ),
                            ),
                          ),
                        )
                      ],
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
