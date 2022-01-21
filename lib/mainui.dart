import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:starboyexchange/Data.dart';
import 'package:starboyexchange/Locks.dart';
import 'package:starboyexchange/account1.dart';
import 'package:starboyexchange/account3.dart';
import 'package:starboyexchange/administrative.dart';
import 'package:starboyexchange/buyCard.dart';
import 'package:starboyexchange/buycrypto.dart';
import 'package:starboyexchange/helpandsupport.dart';
import 'package:starboyexchange/login.dart';
import 'package:starboyexchange/news.dart';
import 'package:starboyexchange/notifications.dart';
import 'package:starboyexchange/profile.dart';
import 'package:starboyexchange/rate1.dart';
import 'package:starboyexchange/rates1.dart';

import 'package:starboyexchange/settings.dart';
import 'package:starboyexchange/testing.dart';
import 'package:starboyexchange/trade1.dart';
import 'package:starboyexchange/withdraw.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';
import 'account2.dart';
import 'history.dart';
import 'package:provider/provider.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:selectable/selectable.dart';

class Mainui extends StatefulWidget {
  final Hisname;
  final Hisemail;

  const Mainui({
    Key? key,
    this.Hisname,
    this.Hisemail,
  }) : super(key: key);

  @override
  _MainuiState createState() => _MainuiState();
}

class _MainuiState extends State<Mainui> {
  //user data
  String? Myuserid = FirebaseAuth.instance.currentUser!.email;
  var walletID;
  dynamic userid;
  dynamic userwallet;
  var uniqueid;

  late String link =
      "https://firebasestorage.googleapis.com/v0/b/starboyexchange-a9c9d.appspot.com/o/profile%2F";

  Future gpro() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    final url = prefs.getString('url');

    var userids = prefs.getString('theid');
    var userwallets = prefs.getString('thebalance');
    print(url);
    print('i got it lol');
    print(' Prefs got $userids');
    print(' Prefs got $userwallets');
    print('uniqueid is $uniqueid');

    setState(() {
      link = url!;
      userid = userids;
      userwallet = userwallets;
      userids = uniqueid;
    });

    print(userid);
    print(userwallet);
    print('uniqueid is $uniqueid');
  }

  iddialog() async {
    final sharedPrefs = await SharedPreferences.getInstance();
    final theunique = sharedPrefs.getString('theid');
    print('the unique is $theunique');

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Your Wallet ID',
              style: GoogleFonts.montserrat(fontSize: 20)),
          content: Selectable(
              child: Text('$theunique',
                  style: GoogleFonts.montserrat(fontSize: 20))),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

  dynamic Actualbal;

  viewhive() async {
    final balbox = await Hive.box('user');
    print(balbox.get('walletBalance'));
    print(balbox.get('defaultid'));
    setState(() {
      Actualbal = balbox.get('walletBalance');
      walletID = balbox.get('defaultid');
    });
    print('walletBalance is $Actualbal');
    print('walletID is $walletID');
  }

  void initState() {
    AwesomeNotifications().isNotificationAllowed().then((isAllowed) {
      if (isAllowed) {
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  title: Text(
                    "StarExchange Notifications",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Montserrat"),
                  ),
                  content: Text(
                    "Starexchange would like to show you Notifications",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Montserrat"),
                  ),
                  actions: [
                    MaterialButton(
                      onPressed: () => AwesomeNotifications()
                          .requestPermissionToSendNotifications()
                          .then((value) => Navigator.pop(context)),
                      child: const Text("Enable"),
                    ),
                    MaterialButton(
                      onPressed: () {
                        gpro();
                        viewhive();
                        Navigator.pop(context);
                      },
                      child: Text("Disable"),
                    ),
                  ],
                ));
      }
    });
    super.initState();
    //viewhive();
    gpro();
  }

  @override
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          key: _globalKey,
          drawer: Drawer(
            child: ListView(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width - 10,
                    height: MediaQuery.of(context).size.height - 20,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(81, 163, 163, 1),
                    ),
                    child: Stack(children: <Widget>[
                      Positioned(
                          top: 62,
                          left: 78.3457260131836,
                          child: Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color.fromRGBO(81, 163, 163, 1),
                                  width: 1,
                                ),
                                image: DecorationImage(
                                    image: NetworkImage(link),
                                    fit: BoxFit.fitWidth),
                                borderRadius:
                                    BorderRadius.all(Radius.elliptical(80, 80)),
                              ))),
                      Positioned(
                          top: 257,
                          left: 58.345726013183594,
                          child: Row(
                            children: [
                              Icon(
                                Icons.person,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              InkWell(
                                onTap: () {
                                  gpro();
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Profile()));
                                },
                                child: Text(
                                  'Profile',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontFamily: 'Montserrat',
                                      fontSize: 14,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
                                ),
                              ),
                            ],
                          )),
                      Positioned(
                          top: 292,
                          left: 58.345726013183594,
                          child: Row(
                            children: [
                              Icon(
                                Icons.account_balance,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Account2()));
                                },
                                child: Text(
                                  'Account Details',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontFamily: 'Montserrat',
                                      fontSize: 14,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
                                ),
                              ),
                            ],
                          )),
                      Positioned(
                          top: 330,
                          left: 58.345726013183594,
                          child: Row(
                            children: [
                              Icon(
                                Icons.notifications_active,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Notifications()));
                                },
                                child: Text(
                                  'Notifications',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontFamily: 'Montserrat',
                                      fontSize: 14,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
                                ),
                              ),
                            ],
                          )),
                      Positioned(
                          top: 362,
                          left: 58.345726013183594,
                          child: Row(
                            children: [
                              Icon(
                                Icons.help,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Helpandsupport()));
                                },
                                child: Text(
                                  'Help and Support',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontFamily: 'Montserrat',
                                      fontSize: 14,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
                                ),
                              ),
                            ],
                          )),
                      Positioned(
                          top: 397,
                          left: 58.345726013183594,
                          child: Row(
                            children: [
                              Icon(
                                Icons.settings,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Settings()));
                                },
                                child: Text(
                                  'User Settings',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontFamily: 'Montserrat',
                                      fontSize: 14,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
                                ),
                              ),
                            ],
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Positioned(
                          top: 440,
                          left: 58.345726013183594,
                          child: Row(
                            children: [
                              Icon(
                                Icons.my_library_books,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => News()));
                                },
                                child: Text(
                                  'News',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontFamily: 'Montserrat',
                                      fontSize: 14,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
                                ),
                              ),

                              //Administrative
                            ],
                          )),
                      Positioned(
                          top: 480,
                          left: 58.345726013183594,
                          child: Row(
                            children: [
                              Icon(
                                Icons.lock,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Locks()));
                                },
                                child: Text(
                                  'Administrative',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontFamily: 'Montserrat',
                                      fontSize: 14,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
                                ),
                              ),

                              //Administrative
                            ],
                          )),
                      Positioned(
                          top: 530,
                          left: 40.345726013183594,
                          child: Container(
                              width: 156.1904754638672,
                              height: 40,
                              child: Stack(children: <Widget>[
                                Positioned(
                                    top: 0,
                                    left: 0,
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Login()));
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
                                            color:
                                                Color.fromRGBO(13, 14, 14, 1),
                                          ),
                                          child: Stack(children: <Widget>[
                                            Positioned(
                                                top: 11,
                                                left: 43,
                                                child: Text(
                                                  'LOG OUT',
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          255, 255, 255, 1),
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 14,
                                                      letterSpacing:
                                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      height: 1),
                                                )),
                                          ])),
                                    )),
                              ]))),
                      Positioned(
                          top: 168,
                          left: 30.345726013183594,
                          child: Text(
                            'Welcome Back',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontFamily: 'Montserrat',
                                fontSize: 18,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1),
                          )),
                      Positioned(
                          top: 189,
                          left: 30.345726013183594,
                          child: Text(
                            " $Myuserid",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontFamily: 'Montserrat',
                                fontSize: 15,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1),
                          )),
                      Positioned(
                          top: 220,
                          left: 50.345726013183594,
                          child: Selectable(
                            topOverlayHeight: 40,
                            child: Row(
                              children: [
                                Icon(Icons.visibility,
                                    color: Colors.white, size: 30),
                                SizedBox(
                                  width: 5,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    iddialog();
                                  },
                                  child: Text(
                                    " View ID",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        fontFamily: 'Montserrat',
                                        fontSize: 15,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1),
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ]))
              ],
            ),
          ),
          backgroundColor: green,
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [

                  //blackguy
                  Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height - 450,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                              offset: Offset(0, 2),
                              blurRadius: 4)
                        ],
                        color: Color.fromRGBO(13, 14, 14, 1),
                      ),
                      child: Stack(children: <Widget>[
                        Positioned(
                          top: 65,
                          left: 310,
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color.fromRGBO(81, 163, 163, 1),
                                width: 1,
                              ),
                              image: DecorationImage(
                                image: NetworkImage(link.toString()),
                                fit: BoxFit.fitWidth,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(40, 40)),
                            ),
                          ),
                        ),
                        Positioned(
                            top: 67,
                            left: 95,
                            child: Text(
                              "Hello Welcome Back",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontFamily: 'Montserrat',
                                  fontSize: 18,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1),
                            )),
                        Positioned(
                            top: 201,
                            left: 125,
                            child: Row(
                              children: [
                                Text(
                                  Actualbal == null
                                      ? "N **** "
                                      : 'N ${Actualbal.toString()}',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontFamily: 'Montserrat',
                                      fontSize: 24,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                GestureDetector(
                                    onTap: () {
                                      gpro();
                                      //iddialog();

                                      viewhive();
                                    },
                                    child: Icon(
                                      Icons.visibility_rounded,
                                      color: Colors.white,
                                      size: 20,
                                    )),
                              ],
                            )),
                        Positioned(
                            top: 120,
                            left: 100,
                            child: Text(
                              "  ${Myuserid.toString()}",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontFamily: 'Montserrat',
                                  fontSize: 18,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1),
                            )),
                        Positioned(
                            top: 166,
                            left: 119,
                            child: Center(
                              child: Text(
                                'Avaliable Balance',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Montserrat',
                                    fontSize: 15,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1),
                              ),
                            )),
                        Positioned(
                            top: 262,
                            left: 47,
                            child: Container(
                                width: 310,
                                height: 40,
                                child: Stack(children: <Widget>[
                                  Positioned(
                                    top: 0,
                                    left: 0,
                                    child: InkWell(
                                      onTap: () {
                                        showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return AlertDialog(
                                                title: Text(
                                                  "Hello StarUser",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontFamily: "montserrat",
                                                  ),
                                                ),
                                                content: Text(
                                                  "Select Your Trade Type ",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontFamily: "montserrat",
                                                  ),
                                                ),
                                                actions: <Widget>[
                                                  FlatButton(
                                                    child: Text(
                                                      "Trade Giftcards",
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontFamily:
                                                            "montserrat",
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                    onPressed: () {
                                                      viewhive();
                                                      gpro();
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (context) =>
                                                                      Buycard()));
                                                    },
                                                  ),
                                                  FlatButton(
                                                    child: Text(
                                                      " Trade Crypto",
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontFamily:
                                                            "montserrat",
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                    onPressed: () {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  const Butcrypto()));
                                                    },
                                                  )
                                                ],
                                              );
                                            });
                                        //Navigator.push(context, MaterialPageRoute(builder: (context)=>Trade1()));
                                      },
                                      child: Container(
                                        width: 310,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(5),
                                            topRight: Radius.circular(5),
                                            bottomLeft: Radius.circular(5),
                                            bottomRight: Radius.circular(5),
                                          ),
                                          color:
                                              Color.fromRGBO(81, 163, 163, 1),
                                        ),
                                        child: Stack(children: <Widget>[
                                          Positioned(
                                              top: 10,
                                              left: 86,
                                              child: Text(
                                                'TRADE GIFT CARD',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        13, 14, 14, 1),
                                                    fontFamily: 'Montserrat',
                                                    fontSize: 14,
                                                    letterSpacing:
                                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    height: 1),
                                              )),
                                          Positioned(
                                            top: 10,
                                            left: 267,
                                            child: Image.asset(
                                                "assets/card1c.png"),
                                          ),
                                        ]),
                                      ),
                                    ),
                                  ),
                                ]))),
                        Positioned(
                            top: 60.61376953125,
                            left: 30,
                            child: Container(
                                width: 22.611940383911133,
                                height: 15,
                                child: Stack(children: <Widget>[
                                  Positioned(
                                      top: 0,
                                      left: 0,
                                      child: Container(
                                          width: 22.611940383911133,
                                          height: 15,
                                          child: Stack(children: <Widget>[
                                            Positioned(
                                              top: 0,
                                              left: 0,
                                              child: InkWell(
                                                onTap: () {
                                                  viewhive();
                                                  gpro().whenComplete(() =>
                                                      _globalKey.currentState!
                                                          .openDrawer());

                                                  //_globalKey.currentState!
                                                  //.openDrawer();
                                                },
                                                child: SvgPicture.asset(
                                                  "assets/fmenu.svg",
                                                  color: Colors.white,
                                                  height: 20,
                                                  width: 20,
                                                ),
                                              ),
                                            ),
                                          ]))),
                                ]))),
                      ])),

                      SizedBox(
                        height: 20,
                      ),
                  Container(
                      width: 350,
                      height: 141,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                              offset: Offset(0, 2),
                              blurRadius: 4)
                        ],
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                      child: Stack(children: <Widget>[
                        Positioned(
                            top: 14,
                            left: 24,
                            child: Text(
                              'Top Gift Cards',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(13, 13, 13, 1),
                                  fontFamily: 'Montserrat',
                                  fontSize: 14,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1),
                            )),
                        Positioned(
                            top: 44,
                            left: 32,
                            child: Container(
                                width: 63.999996185302734,
                                height: 48,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/amazon.png'),
                                      fit: BoxFit.fitWidth),
                                ))),
                        Positioned(
                            top: 44,
                            left: 140,
                            child: Container(
                                width: 63.999996185302734,
                                height: 48,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/itunes.png'),
                                      fit: BoxFit.fitWidth),
                                ))),
                        Positioned(
                            top: 44,
                            left: 250,
                            child: Container(
                              width: 63.999996185302734,
                              height: 48,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                  topRight: Radius.circular(5),
                                  bottomLeft: Radius.circular(5),
                                  bottomRight: Radius.circular(5),
                                ),
                                image: DecorationImage(
                                    image: AssetImage('assets/skrill.png'),
                                    fit: BoxFit.fitWidth),
                              ),
                            )),
                        Positioned(
                          top: 63,
                          left: 291,
                          child: SvgPicture.asset('assets/checkmark.svg',
                              semanticsLabel: 'vector'),
                        ),
                        Positioned(
                            top: 109,
                            left: 31,
                            child: Container(
                                width: 49,
                                height: 13,
                                child: Stack(children: <Widget>[
                                  Positioned(
                                      top: 0,
                                      left: 12,
                                      child: Text(
                                        '400',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Color.fromRGBO(0, 0, 0, 1),
                                            fontFamily: 'Montserrat',
                                            fontSize: 14,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1),
                                      )),
                                ]))),
                        Positioned(
                            top: 109,
                            left: 140,
                            child: Container(
                                width: 49,
                                height: 13,
                                child: Stack(children: <Widget>[
                                  Positioned(
                                      top: 0,
                                      left: 12,
                                      child: Text(
                                        '500',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Color.fromRGBO(0, 0, 0, 1),
                                            fontFamily: 'Montserrat',
                                            fontSize: 14,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1),
                                      )),
                                ]))),
                        Positioned(
                            top: 109,
                            left: 255,
                            child: Container(
                                width: 49,
                                height: 13,
                                child: Stack(children: <Widget>[
                                  Positioned(
                                      top: 2,
                                      left: 0,
                                      child: Container(
                                          width: 11.666666984558105,
                                          height: 10,
                                          child: Stack(children: <Widget>[]))),
                                  Positioned(
                                      top: 0,
                                      left: 12,
                                      child: Text(
                                        '350',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Color.fromRGBO(0, 0, 0, 1),
                                            fontFamily: 'Montserrat',
                                            fontSize: 14,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1),
                                      )),
                                ]))),
                      ])),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      width: 316,
                      height: 192,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                              offset: Offset(0, 2),
                              blurRadius: 4)
                        ],
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                      child: Stack(children: <Widget>[
                        Positioned(
                            top: 14,
                            left: 22,
                            child: Text(
                              'Latest trades',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(13, 13, 13, 1),
                                  fontFamily: 'Montserrat',
                                  fontSize: 14,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1),
                            )),
                        Positioned(
                            top: 14,
                            left: 232,
                            child: Container(
                                width: 66.68421173095703,
                                height: 16,
                                child: Stack(children: <Widget>[
                                  Positioned(
                                      top: 0,
                                      left: 0,
                                      child: Text(
                                        'See all',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(81, 163, 163, 1),
                                            fontFamily: 'Montserrat',
                                            fontSize: 12,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1),
                                      )),
                                ]))),
                        Positioned(
                            top: 47,
                            left: 17,
                            child: Container(
                                width: 287,
                                height: 36,
                                child: Stack(children: <Widget>[
                                  Positioned(
                                      top: 0,
                                      left: 5,
                                      child: Text(
                                        'Apple Itunes',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(13, 13, 13, 1),
                                            fontFamily: 'Montserrat',
                                            fontSize: 14,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1),
                                      )),
                                  Positioned(
                                      top: 0,
                                      left: 237,
                                      child: Text(
                                        '\$ 50',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(13, 13, 13, 1),
                                            fontFamily: 'Montserrat',
                                            fontSize: 14,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1),
                                      )),
                                  Positioned(
                                      top: 19,
                                      left: 0,
                                      child: Text(
                                        '${DateTime.now()} ',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(13, 14, 14, 1),
                                            fontFamily: 'Montserrat',
                                            fontSize: 12,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1),
                                      )),
                                  Positioned(
                                      top: 19,
                                      left: 198,
                                      child: Text(
                                        'Total : 30,000',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(13, 14, 14, 1),
                                            fontFamily: 'Montserrat',
                                            fontSize: 12,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1),
                                      )),
                                ]))),
                        Positioned(
                            top: 96,
                            left: 17,
                            child: Container(
                                width: 287,
                                height: 36,
                                child: Stack(children: <Widget>[
                                  Positioned(
                                      top: 0,
                                      left: 5,
                                      child: Text(
                                        'Apple Itunes',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(13, 13, 13, 1),
                                            fontFamily: 'Montserrat',
                                            fontSize: 14,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1),
                                      )),
                                  Positioned(
                                      top: 0,
                                      left: 237,
                                      child: Text(
                                        '\$ 50',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(13, 13, 13, 1),
                                            fontFamily: 'Montserrat',
                                            fontSize: 14,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1),
                                      )),
                                  Positioned(
                                      top: 19,
                                      left: 0,
                                      child: Text(
                                        '${DateTime.now()}',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(13, 14, 14, 1),
                                            fontFamily: 'Montserrat',
                                            fontSize: 12,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1),
                                      )),
                                  Positioned(
                                      top: 19,
                                      left: 198,
                                      child: Text(
                                        'Total : 30,000',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(13, 14, 14, 1),
                                            fontFamily: 'Montserrat',
                                            fontSize: 12,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1),
                                      )),
                                ]))),
                        Positioned(
                          top: 145,
                          left: 17,
                          child: Container(
                            width: 287,
                            height: 36,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 5,
                                  child: Text(
                                    'Apple Itunes',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(13, 13, 13, 1),
                                        fontFamily: 'Montserrat',
                                        fontSize: 14,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1),
                                  )),
                              Positioned(
                                  top: 0,
                                  left: 237,
                                  child: Text(
                                    '\$ 50',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(13, 13, 13, 1),
                                        fontFamily: 'Montserrat',
                                        fontSize: 14,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1),
                                  )),
                              Positioned(
                                  top: 19,
                                  left: 0,
                                  child: Text(
                                    '${DateTime.now()} ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color.fromRGBO(13, 14, 14, 1),
                                        fontFamily: 'Montserrat',
                                        fontSize: 12,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1),
                                  )),
                              Positioned(
                                  top: 19,
                                  left: 198,
                                  child: Text(
                                    'Total : 30,000',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color.fromRGBO(13, 14, 14, 1),
                                        fontFamily: 'Montserrat',
                                        fontSize: 12,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1),
                                  )),
                            ]),
                          ),
                        ),
                      ])),
                  //lastman

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                        width: 316,
                        height: 67,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.25),
                                offset: Offset(0, 4),
                                blurRadius: 3)
                          ],
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                        child: Stack(children: <Widget>[
                          Positioned(
                              top: 14,
                              left: 22,
                              child: Container(
                                  width: 40,
                                  height: 44,
                                  child: Stack(children: <Widget>[
                                    Positioned(
                                      top: 0,
                                      left: 5,
                                      child: InkWell(
                                        onTap: () {
                                          Fluttertoast.showToast(
                                            msg: "You are Home Already",
                                            backgroundColor: Colors.black,
                                            textColor: Colors.white,
                                            gravity: ToastGravity.SNACKBAR,
                                          );
                                          //Navigator.push(context, MaterialPageRoute(builder: (context)=>Mainui()));
                                        },
                                        child: SvgPicture.asset(
                                            'assets/home.svg',
                                            semanticsLabel: 'vector'),
                                      ),
                                    ),
                                    Positioned(
                                        top: 28,
                                        left: 0,
                                        child: Text(
                                          'Home',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: 'Montserrat',
                                              fontSize: 12,
                                              letterSpacing:
                                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height: 1),
                                        )),
                                  ]))),
                          Positioned(
                              top: 14,
                              left: 84,
                              child: Container(
                                  width: 64,
                                  height: 42,
                                  child: Stack(children: <Widget>[
                                    Positioned(
                                        top: 28,
                                        left: 0,
                                        child: Container(
                                            width: 64,
                                            height: 14,
                                            child: Stack(children: <Widget>[
                                              Positioned(
                                                  top: 0,
                                                  left: 0,
                                                  child: Text(
                                                    ' Calculate',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontFamily:
                                                            'Montserrat',
                                                        fontSize: 12,
                                                        letterSpacing:
                                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        height: 1),
                                                  )),
                                            ]))),
                                    Positioned(
                                      top: 0,
                                      left: 21,
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Rate1()));
                                        },
                                        child: SvgPicture.asset(
                                          'assets/calculator.svg',
                                          semanticsLabel: 'vector',
                                          color: Colors.black,
                                          height: 20,
                                          width: 20,
                                        ),
                                      ),
                                    ),
                                  ]))),
                          Positioned(
                              top: 14,
                              left: 173,
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => History1()));
                                },
                                child: Container(
                                    width: 46,
                                    height: 47,
                                    child: Stack(children: <Widget>[
                                      Positioned(
                                          top: 28,
                                          left: 0,
                                          child: Container(
                                              width: 46,
                                              height: 19,
                                              child: Stack(children: <Widget>[
                                                Positioned(
                                                    top: 0,
                                                    left: 0,
                                                    child: Text(
                                                      'History',
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontFamily:
                                                              'Montserrat',
                                                          fontSize: 12,
                                                          letterSpacing:
                                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          height: 1),
                                                    )),
                                              ]))),
                                      Positioned(
                                          top: 0,
                                          left: 11,
                                          child: Container(
                                              width: 24,
                                              height: 23,
                                              child: Stack(children: <Widget>[
                                                Positioned(
                                                    top: 0,
                                                    left: 0,
                                                    child: Container(
                                                        width: 24,
                                                        height: 23,
                                                        child: Stack(
                                                            children: <Widget>[
                                                              Positioned(
                                                                top: 0,
                                                                left: 0,
                                                                child:
                                                                    SvgPicture
                                                                        .asset(
                                                                  'assets/search.svg',
                                                                  semanticsLabel:
                                                                      'vector',
                                                                  color: Colors
                                                                      .black,
                                                                  height: 20,
                                                                  width: 20,
                                                                ),
                                                              ),
                                                            ]))),
                                              ]))),
                                    ])),
                              )),
                          Positioned(
                              top: 14,
                              left: 242,
                              child: Container(
                                  width: 67,
                                  height: 40,
                                  child: Stack(children: <Widget>[
                                    Positioned(
                                        top: 28,
                                        left: 0,
                                        child: Container(
                                            width: 67,
                                            height: 12,
                                            child: Stack(children: <Widget>[
                                              Positioned(
                                                  top: 0,
                                                  left: 0,
                                                  child: Text(
                                                    'withdraw',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                        color: Color.fromRGBO(
                                                            13, 14, 14, 1),
                                                        fontFamily:
                                                            'Montserrat',
                                                        fontSize: 12,
                                                        letterSpacing:
                                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        height: 1),
                                                  )),
                                            ]))),
                                    Positioned(
                                        top: 0,
                                        left: 20,
                                        child: Container(
                                            width: 27.5,
                                            height: 25,
                                            child: Stack(children: <Widget>[
                                              Positioned(
                                                top: 0,
                                                left: 0,
                                                child: InkWell(
                                                  onTap: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                Withdraw1()));
                                                  },
                                                  child: SvgPicture.asset(
                                                    'assets/atm.svg',
                                                    semanticsLabel: 'vector',
                                                    color: Colors.black,
                                                    height: 20,
                                                    width: 20,
                                                  ),
                                                ),
                                              ),
                                            ]))),
                                  ]))),
                        ])),
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
