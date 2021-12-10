import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:starboyexchange/account1.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:starboyexchange/buycrypto.dart';
import 'package:starboyexchange/mainui.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Ccard extends StatefulWidget {
  const Ccard({Key? key}) : super(key: key);

  @override
  _CcardState createState() => _CcardState();
}

class _CcardState extends State<Ccard> {
  TextEditingController _cryptoname = TextEditingController();
  TextEditingController _walletemail = TextEditingController();
  TextEditingController _walletaddressController = TextEditingController();
  TextEditingController _phonenumber = TextEditingController();

  CarouselController _controller = CarouselController();

  var _formKey = GlobalKey<FormState>();

  final Database = FirebaseDatabase.instance.reference();

  sendtofirestore() async {
    FirebaseFirestore.instance.collection(' Giftcard Buyers').add({
      'name': _cryptoname.text,
      'email': _walletemail.text,
      'address': _walletaddressController.text,
      'phone': _phonenumber.text,
      "date": DateTime.now().toString(),
    }).whenComplete(() => print(' Trade Sent to Firestore'));
  }

  sendtrades() async {
    final storetrades = Database.child("Giftcard Buyers").set(
      {
        "Giftcard type": _cryptoname.text,
        "Walletaddress": _walletaddressController.text,
        "WalletEmail": _walletemail.text,
        "Buyer Number": _phonenumber.text,
      },
    ).whenComplete(() => Scaffold.of(context).showSnackBar(SnackBar(
          content: Text("Your request has been sent"),
          duration: Duration(seconds: 20),
        )));
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
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height -10,
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),

                    CarouselSlider(
                      options: CarouselOptions(
                        height: 290,
                        aspectRatio: 16 / 9,
                        viewportFraction: 0.8,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 3),
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                        scrollDirection: Axis.horizontal,
                      ),
                      carouselController: _controller,
                      items: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Image.network(
                              "https://dundle.com/resources/images/products/product-google-search/100-cad-amazon-16x9.png"),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Image.network(
                              "https://dealtrunk.com/wp-content/uploads/2021/04/free-itunes-gift-cards.jpg"),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Image.network(
                              "https://res.cloudinary.com/jerrick/image/upload/f_jpg,fl_progressive,q_auto,w_1024/5fa54f591774a8001d3af424.jpg"),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCtEQ7cAsOwkaT24Tx4-hbnlhygkFWcz0GpWTMbtPr-rl0q1aW7IktP-icZ83MLg9Ygwk&usqp=CAU"),
                        ),
                      ],
                    ),

                    //SvgPicture.asset("assets/profile.svg",height: 250,width: 250,),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 60,
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
                              hintText: " Enter Giftcard Name",
                              hintStyle: GoogleFonts.montserrat(
                                color: green,
                              ),
                              suffixIcon: Icon(
                                Icons.card_giftcard,
                                color: green,
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please Enter a valid crypto name";
                              }
                              return null;
                            },
                            onSaved: (value) {
                              setState(() {
                                _cryptoname.text = value!;
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
                      height: 60,
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
                              hintText: " Enter wallet Address",
                              hintStyle: GoogleFonts.montserrat(
                                color: green,
                              ),
                              suffixIcon: Icon(
                                Icons.vpn_key,
                                color: green,
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please Enter a valid wallet Address";
                              }
                              return null;
                            },
                            onSaved: (value) {
                              setState(() {
                                _cryptoname.text = value!;
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
                      height: 60,
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
                              hintText: " Enter Wallet Email Address",
                              hintStyle: GoogleFonts.montserrat(
                                color: green,
                              ),
                              suffixIcon: Icon(
                                Icons.email,
                                color: green,
                              ),
                            ),
                            validator: (value) {
                              if (value == null ||
                                  RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                          .hasMatch(value) ==
                                      false) {
                                return "Please Enter  a valid Wallet email";
                              }
                              return null;
                            },
                            onSaved: (value) {
                              setState(() {
                                _walletemail.text = value!;
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
                      height: 60,
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
                              hintText: " Enter Phone number",
                              hintStyle: GoogleFonts.montserrat(
                                color: green,
                              ),
                              suffixIcon: Icon(
                                Icons.phone,
                                color: green,
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.length < 11) {
                                return "Please Enter a valid PhoneNumber";
                              }
                              return null;
                            },
                            onSaved: (value) {
                              setState(() {
                                _phonenumber.text = value!;
                              });
                            },
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 20,
                    ),

                    GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              content: Text(
                                "Confirm Trade ?",
                                style: GoogleFonts.montserrat(),
                              ),
                              actions: <Widget>[
                                FlatButton(
                                  child: Text("YES",
                                      style: GoogleFonts.montserrat()),
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      sendtofirestore();
                                      sendtrades();
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            title: Text(
                                              "Success",
                                              style: GoogleFonts.montserrat(),
                                            ),
                                            content: Text(
                                              "Your Trade has been Submitted, You would be contacted soon",
                                              style: GoogleFonts.montserrat(),
                                            ),
                                            actions: <Widget>[
                                              FlatButton(
                                                child: Text("Continue",
                                                    style:
                                                        GoogleFonts.montserrat()),
                                                onPressed: () {
                                                  sendtrades();
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              Butcrypto()));
                                                },
                                              ),
                                              FlatButton(
                                                child: Text("Go back",
                                                    style:
                                                        GoogleFonts.montserrat()),
                                                onPressed: () {
                                                  sendtrades();
                                                  Navigator.pop(context);
                                                },
                                              ),
                                            ],
                                          );
                                        },
                                      );

                                      sendtrades();
                                    } else {
                                      print("Invaid");
                                    }
                                  },
                                ),
                                FlatButton(
                                  child:
                                      Text("NO", style: GoogleFonts.montserrat()),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: Container(
                        height: 60,
                        width: 280,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            "Buy Now ",
                            style: GoogleFonts.montserrat(
                                textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                            )),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
