import 'dart:convert';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:math' as math;

import 'package:starboyexchange/account2.dart';
import 'package:starboyexchange/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:http/http.dart' as http;

final green = const Color.fromRGBO(81, 163, 163, 1);
final inputcolor = Color.fromRGBO(196, 196, 196, 1);

class Account1 extends StatefulWidget {
  const Account1({Key? key}) : super(key: key);

  @override
  _Account1State createState() => _Account1State();
}

class _Account1State extends State<Account1> {
  //all input controllers
  TextEditingController ufullname = TextEditingController();
  TextEditingController uemail = TextEditingController();
  TextEditingController uphonenumber = TextEditingController();
  TextEditingController upassword = TextEditingController();

  String? get userid => null;

  final Walleturl = ("https://sandbox.wallets.africa/wallet/generate");
  final secret = ('hfucj5jatq8h');
  String bearer = ('uvjqzm5xl6bw');

  dynamic WalletID;
  dynamic WalletBalance;

  var walletcreate = 'https://api.getwallets.co/v1/wallets';
  var getbearer = 'sk_live_61d69f09ea5aa2f41200885961d69f09ea5aa2f41200885a';
  dynamic result;
  dynamic demwallet;
  dynamic dembalance;
  dynamic defaultid;

  Future cwallet() async {
    var response = await http.post(Uri.parse(walletcreate),
        headers: {
          'Authorization': 'Bearer $getbearer',
          'Content-Type': 'application/json',
          "Accept": "application/json"
        },
        //body
        body: jsonEncode({'customer_email': uemail.text}));

    if (response.statusCode == 200) {
      result = json.decode(response.body);

      print(result);

      setState(() {
        demwallet = '${result['data']['wallet_id']}';
        dembalance = '${result['data']['balance']}';
        defaultid = demwallet;
      });

      saveetohive();
      SaveIdtoFirestore();
      GetWalletidandbalance();

      print(demwallet);
      print('user balance is $dembalance');
      print('default Id is  $defaultid');
    } else {
      throw Exception('Failed ');
    }
  }

  SaveIdtoFirestore() async {
    final FirebaseAuth _auth = FirebaseAuth.instance;
    final FirebaseUseruser = await _auth.currentUser!.email;
    await FirebaseFirestore.instance
        .collection('wallets')
        .doc(FirebaseUseruser)
        .set({
      'walletid': demwallet ?? '',
      'balance': dembalance ?? '',
    }).whenComplete(() {
      GetWalletidandbalance();
    });

    print('Firestore wallet is $demwallet');
    print('Firestore balance is $dembalance');
  }

  var walletdetails = FirebaseFirestore.instance.collection('wallets');

  GetWalletidandbalance() async {
    return await walletdetails.doc(uemail.text).get().then((value) {
      setState(() {
        WalletID = value.data()!['walletid'];
        WalletBalance = value.data()!['balance'];

        print('Firestore Got  is $WalletID');
      });
    });
  }

  //Future Createwallet() async {
  //final response = await http.post(
  // Uri.parse(Walleturl),
  // // headers: {
  // "Content-Type": "application/json",
  // "Accept": "application/json",
  //  "Authorization": "Bearer $bearer",
  //},
  //  body: jsonEncode(
  // {
  // "firstName": ufullname.text,
  // "lastName": ufullname.text,
  // "Bvn": uphonenumber.text,
  //  "email": uemail.text,
  //  "secretKey": secret,
  //  "dateOfBirth": "1946-01-12",
  // "phoneNumber": 0000000000,
  // "password": upassword.text,
  //"currency": "NGN"
  // },
  //  ),
  // );
  // if (response.statusCode == 200) {
  //  var responseJson = json.decode(response.body);
  // setState(() {
  //  WalletID = responseJson['data']['phoneNumber'];
  //  });
  // } else {
  //  print(response.statusCode);
  //  print(bearer);
  // }

  //print(response.body);
  //}

  Future Signup() async {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: uemail.text.trim(),
        password: upassword.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return ('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        return ('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  Register() async {
    if (_myKey.currentState!.validate()) {
      _myKey.currentState!.save();
      Signup().whenComplete(() => saveetohive());
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('email', uemail.text.trim());
      prefs.setString('fullname', ufullname.text.trim());
      prefs.setString('theid', WalletID);
      prefs.setString('thebalance', WalletBalance);
      print('prefs saved id is  $WalletID');
      print('prefs saved balance is  $WalletBalance');


      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Account2()));
    }
  }

  savedatatodb() {
    FirebaseFirestore.instance.collection('users').doc(userid).set({
      'fullname': ufullname.text.trim(),
      'email': uemail.text.trim(),
      'phonenumber': uphonenumber.text.trim(),
      'password': upassword.text.trim(),
      "walletid": WalletID,
    }).whenComplete(() => print("Saved  fS Data Successfully"));
  }

  saveetohive() async {
    await Hive.openBox('user');
    await Hive.box('user').put('fullname', ufullname.text.trim());
    await Hive.box('user').put('email', uemail.text.trim());
    await Hive.box('user').put('phonenumber', uphonenumber.text.trim());
    await Hive.box('user').put('password', upassword.text.trim());
    await Hive.box('user').put('walletid', demwallet);
    await Hive.box('user').put('walletBalance', dembalance);
    await Hive.box('user').put('defaultid', defaultid);

    print("Saved  Hive Data Successfully");
    print(Hive.box('user').get('fullname'));
    print(Hive.box('user').get('walletid'));
    print(Hive.box('user').get('walletBalance'));
    print(Hive.box('user').get('defaultid'));
  }

  final _myKey = GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState
    //Register();
    //saveetohive();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: green,
        body: SingleChildScrollView(
          child: Center(
            child: Form(
              key: _myKey,
              child: Column(
                children: [
                  SizedBox(
                    height: 35,
                  ),
                  //starboy
                  Container(
                    width: 116,
                    height: 74,
                    child: Stack(children: <Widget>[
                      Positioned(
                        top: 34.04002380371094,
                        left: 2.2737367544323206e-13,
                        child: Transform.rotate(
                          angle: 1.444701727598654e-16 * (math.pi / 180),
                          child: Text(
                            'Xchange',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontFamily: 'Montserrat',
                                fontSize: 25,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.bold,
                                height: 1),
                          ),
                        ),
                      ),
                      Positioned(
                          top: -2.2737367544323206e-13,
                          left: 2.2727131843566895,
                          child: Transform.rotate(
                            angle: 3.1347894642296156e-16 * (math.pi / 180),
                            child: Text(
                              '    Star',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontFamily: 'Montserrat',
                                  fontSize: 25,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.bold,
                                  height: 1),
                            ),
                          )),
                    ]),
                  ),
                  //usermsg
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      'Hello Star User !!! \n Please We Just Need A Few Details From \n You So We Can Continue.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontFamily: 'Montserrat',
                        fontSize: 12,
                        letterSpacing: 1,
                        fontWeight: FontWeight.normal,
                        height: 1.5,
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 10,
                  ),
                  //inputfield1
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                        width: 312,
                        height: 74,
                        child: Stack(children: <Widget>[
                          Positioned(
                            top: 24,
                            left: 0,
                            child: Container(
                              width: 312,
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                  topRight: Radius.circular(5),
                                  bottomLeft: Radius.circular(5),
                                  bottomRight: Radius.circular(5),
                                ),
                                color: Color.fromRGBO(
                                    13, 13, 13, 0.5099999904632568),
                                border: Border.all(
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  width: 1,
                                ),
                              ),
                              child: Stack(children: <Widget>[
                                TextFormField(
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter some text';
                                    }
                                    return null;
                                  },
                                  controller: ufullname,
                                  textAlign: TextAlign.start,
                                  cursorColor: Colors.black,
                                  keyboardType: TextInputType.name,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    hintText: "Enter Full Name",
                                    hintStyle: TextStyle(
                                        color: inputcolor,
                                        fontFamily: "Montserrat",
                                        fontSize: 12),
                                    contentPadding: EdgeInsets.fromLTRB(
                                        20.0, 10.0, 20.0, 10.0),
                                  ),
                                ),
                              ]),
                            ),
                          ),
                          Positioned(
                              top: 0,
                              left: 0,
                              child: Text(
                                'Full name',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Montserrat',
                                    fontSize: 15,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.bold,
                                    height: 1),
                              )),
                        ])),
                  ),
                  //inputfield2.
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                        width: 312,
                        height: 74,
                        child: Stack(children: <Widget>[
                          Positioned(
                            top: 24,
                            left: 0,
                            child: Container(
                              width: 312,
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                  topRight: Radius.circular(5),
                                  bottomLeft: Radius.circular(5),
                                  bottomRight: Radius.circular(5),
                                ),
                                color: Color.fromRGBO(
                                    13, 13, 13, 0.5099999904632568),
                                border: Border.all(
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  width: 1,
                                ),
                              ),
                              child: Stack(children: <Widget>[
                                TextFormField(
                                  validator: (value) {
                                    if (value!.isEmpty ||
                                        !RegExp(r'^[a-zA-Z0-9.a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$')
                                            .hasMatch(value)) {
                                      return 'Please Enter a Valid Email';
                                    }
                                    return null;
                                  },
                                  controller: uemail,
                                  textAlign: TextAlign.start,
                                  cursorColor: Colors.black,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    hintText: "Enter Full Email Address Here",
                                    hintStyle: TextStyle(
                                        color: inputcolor,
                                        fontFamily: "Montserrat",
                                        fontSize: 12),
                                    contentPadding: EdgeInsets.fromLTRB(
                                        20.0, 10.0, 20.0, 10.0),
                                  ),
                                ),
                              ]),
                            ),
                          ),
                          Positioned(
                              top: 0,
                              left: 0,
                              child: Text(
                                'Email Address',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Montserrat',
                                    fontSize: 12,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.bold,
                                    height: 1),
                              )),
                        ])),
                  ),
                  //inputfield3,
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                        width: 312,
                        height: 74,
                        child: Stack(children: <Widget>[
                          Positioned(
                            top: 24,
                            left: 0,
                            child: Container(
                              width: 312,
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                  topRight: Radius.circular(5),
                                  bottomLeft: Radius.circular(5),
                                  bottomRight: Radius.circular(5),
                                ),
                                color: Color.fromRGBO(
                                    13, 13, 13, 0.5099999904632568),
                                border: Border.all(
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  width: 1,
                                ),
                              ),
                              child: Stack(children: <Widget>[
                                TextFormField(
                                  validator: (value) {
                                    if (value!.isEmpty ||
                                        value.length < 11 ||
                                        value.length > 12) {
                                      return 'Please enter Your Number';
                                    }
                                    return null;
                                  },
                                  controller: uphonenumber,
                                  textAlign: TextAlign.start,
                                  cursorColor: Colors.black,
                                  keyboardType: TextInputType.phone,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    hintText: "Enter Phone Number Here",
                                    hintStyle: TextStyle(
                                        color: inputcolor,
                                        fontFamily: "Montserrat",
                                        fontSize: 12),
                                    contentPadding: EdgeInsets.fromLTRB(
                                        20.0, 10.0, 20.0, 10.0),
                                  ),
                                ),
                              ]),
                            ),
                          ),
                          Positioned(
                              top: 0,
                              left: 0,
                              child: Text(
                                'Phone Number',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Montserrat',
                                    fontSize: 15,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.bold,
                                    height: 1),
                              )),
                        ])),
                  ),
                  //passwordinput
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                        width: 312,
                        height: 74,
                        child: Stack(children: <Widget>[
                          Positioned(
                            top: 24,
                            left: 0,
                            child: Container(
                              width: 312,
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                  topRight: Radius.circular(5),
                                  bottomLeft: Radius.circular(5),
                                  bottomRight: Radius.circular(5),
                                ),
                                color: Color.fromRGBO(
                                    13, 13, 13, 0.5099999904632568),
                                border: Border.all(
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  width: 1,
                                ),
                              ),
                              child: Stack(children: <Widget>[
                                TextFormField(
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter Your Password';
                                    }
                                    return null;
                                  },
                                  controller: upassword,
                                  textAlign: TextAlign.start,
                                  cursorColor: Colors.black,
                                  keyboardType: TextInputType.visiblePassword,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    hintText: "Enter A Strong Password Here",
                                    hintStyle: TextStyle(
                                        color: inputcolor,
                                        fontFamily: "Montserrat",
                                        fontSize: 12),
                                    contentPadding: EdgeInsets.fromLTRB(
                                        20.0, 10.0, 20.0, 10.0),
                                  ),
                                ),
                              ]),
                            ),
                          ),
                          Positioned(
                              top: 0,
                              left: 0,
                              child: Text(
                                'Password',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Montserrat',
                                    fontSize: 15,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.bold,
                                    height: 1),
                              )),
                        ])),
                  ),
                  //confirmpass
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                        width: 312,
                        height: 74,
                        child: Stack(children: <Widget>[
                          Positioned(
                            top: 24,
                            left: 0,
                            child: Container(
                              width: 312,
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                  topRight: Radius.circular(5),
                                  bottomLeft: Radius.circular(5),
                                  bottomRight: Radius.circular(5),
                                ),
                                color: Color.fromRGBO(
                                    13, 13, 13, 0.5099999904632568),
                                border: Border.all(
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  width: 1,
                                ),
                              ),
                              child: Stack(children: <Widget>[
                                TextFormField(
                                  validator: (value) {
                                    if (value!.isEmpty ||
                                        value != upassword.text) {
                                      return 'Error Password Not Match';
                                    }
                                    return null;
                                  },
                                  textAlign: TextAlign.start,
                                  cursorColor: Colors.black,
                                  keyboardType: TextInputType.visiblePassword,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    hintText: "Confirm Password Here",
                                    hintStyle: TextStyle(
                                        color: inputcolor,
                                        fontFamily: "Montserrat",
                                        fontSize: 12),
                                    contentPadding: EdgeInsets.fromLTRB(
                                        20.0, 10.0, 20.0, 10.0),
                                  ),
                                ),
                              ]),
                            ),
                          ),
                          Positioned(
                              top: 0,
                              left: 0,
                              child: Text(
                                'Confirm Password',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Montserrat',
                                    fontSize: 15,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.bold,
                                    height: 1),
                              )),
                        ])),
                  ),
                  //signup btn
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: InkWell(
                      splashColor: Colors.grey,
                      onTap: () {
                        Register();
                        cwallet();
                        //saveetohive();
                        savedatatodb();
                        SaveIdtoFirestore();
                      },
                      child: Container(
                          width: 156.1904754638672,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5),
                              bottomLeft: Radius.circular(5),
                              bottomRight: Radius.circular(5),
                            ),
                            color: Color.fromRGBO(229, 229, 229, 1),
                          ),
                          child: Stack(children: <Widget>[
                            Positioned(
                                top: 12,
                                left: 46,
                                child: Text(
                                  'SIGN UP',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(13, 14, 14, 1),
                                      fontFamily: 'Montserrat',
                                      fontSize: 14,
                                      letterSpacing: 0,
                                      fontWeight: FontWeight.bold,
                                      height: 1),
                                )),
                          ])),
                    ),
                  ),
                  //createAccount,login
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          print("Watsup");
                        },
                        child: Text(
                          'Have an Account ? ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'Montserrat',
                            fontSize: 14,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.bold,
                            height: 1,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Login()));
                        },
                        child: Text(
                          'Login Here',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromRGBO(13, 14, 14, 1),
                              fontFamily: 'Montserrat',
                              fontSize: 14,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.bold,
                              height: 1),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

mixin WalletBalance {}
