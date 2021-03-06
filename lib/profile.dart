import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hive/hive.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import 'package:starboyexchange/account1.dart';
import 'dart:io';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:path_provider/path_provider.dart';
import 'Data.dart';
import 'mainui.dart';
import 'package:provider/provider.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  TextEditingController profilename = TextEditingController();
  TextEditingController profileemail = TextEditingController();
  TextEditingController profileusername = TextEditingController();
  TextEditingController profilenumber = TextEditingController();

  final user = FirebaseAuth.instance.currentUser;

  fetchuserdata() async {}

  File? _selectedImage;
  final picker = ImagePicker();

  //image picker

  Future Profileimg() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _selectedImage = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });

    FirebaseStorage storage = FirebaseStorage.instance;
    Reference reference = storage.ref().child('profilepic/${user!.uid}');
    UploadTask uploadTask = reference.putFile(_selectedImage!);
    uploadTask.then((res) async {
      String url = await res.ref.getDownloadURL();
      print(url.toString());
      print(url);
      print('url.toString()');

      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('url', url);
    });

    print(url.toString());
    Hive.openBox("ppics");
    Hive.box("ppics").put("url", url);
  }

  //getstoreddetails() async {
  // SharedPreferences prefs = await SharedPreferences.getInstance();
  // var Thenames = prefs.getString('fullname');
  //String? Theemails = prefs.getString('email');
  //String? Thenumbers = prefs.getString('phonenumber');
  // print(url);
  // print(Thenames);
  // print(Theemails);
  // print(Thenumbers);

  //setState(() {
  // Thenames = profilename.text;
  // Theemails = profileemail.text;
  // Thenumbers = profilenumber.text;
  // });

  //String usernames = profileusername.text;
  // }

  final Profileurl = Hive.box("ppics").get("url");

  SavetoHive() async {
    Hive.openBox("user");
    await Hive.box('user').put('fullname', profilename.text);
    await Hive.box('user').put('email', profileemail.text);
    await Hive.box('user').put('username', profileusername.text);
    await Hive.box('user').put('phonenumber', profilenumber.text);
    await Hive.box('user').put('urls', Profileurl);
    print("Saved  User profile to Hive");
  }

  ViewHivedata() async{
     //await Hive.Box("user");
    final getdata = Hive.box('user').get('fullname');
    final getdata1 = Hive.box('user').get('email');
    final getdata3 = Hive.box('user').get('phonenumber');
    final getdata4 = Hive.box('user').get('walletid');
  

    setState(() {
     
      profilename.text = getdata;
      profileemail.text = getdata1;
      profilenumber.text = getdata3;
      
    });

    
    print("Got  View Datas ");
    print(getdata);
    print(getdata1);
    print(getdata3);
    print(getdata1);
    print(getdata4);
  }

  Fetchfirestore() async {
    await FirebaseFirestore.instance
        .collection('users')
        .doc(user!.uid)
        .get()
        .then((value) {
      print(value.data().toString());
    });
  }

  final _profikeKey = GlobalKey<FormState>();

  //initialize notifications
  @override
  void initState() {
    // TODO: implement initState
   // ViewHivedata();
    //SavetoHive();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: green,
        body: SingleChildScrollView(
          child: Form(
            key: _profikeKey,
            child: Column(
              children: [
                Container(
                    width: 375,
                    height: 800,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                            offset: Offset(0, 2),
                            blurRadius: 4)
                      ],
                      color: Color.fromRGBO(81, 163, 163, 1),
                    ),
                    child: Stack(children: <Widget>[
                      Positioned(
                          top: 36,
                          left: 121,
                          child: GestureDetector(
                            onTap: () {
                              ViewHivedata();
                              Fetchfirestore();
                              //SavetoHive();
                              //Hive.openBox("user");
                              //gethivedata();
                            },
                            child: Text(
                              "View Profile ",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontFamily: 'Montserrat',
                                  fontSize: 18,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1),
                            ),
                          )),
                      Positioned(
                          top: 252,
                          left: 22,
                          child: Container(
                              width: 312,
                              height: 74,
                              child: Stack(children: <Widget>[
                                Positioned(
                                    top: 24,
                                    left: 0,
                                    child: Container(
                                        width: 312,
                                        height: 50,
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
                                                  value == null) {
                                                return 'Please enter Full Name';
                                              }
                                              return null;
                                            },
                                            controller: profilename,
                                            textAlign: TextAlign.start,
                                            cursorColor: Colors.black,
                                            keyboardType: TextInputType.text,
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              focusedBorder: InputBorder.none,
                                              enabledBorder: InputBorder.none,
                                              errorBorder: InputBorder.none,
                                              disabledBorder: InputBorder.none,
                                              hintText:
                                                  "Please Enter Full Name",
                                              hintStyle: TextStyle(
                                                  color: inputcolor,
                                                  fontFamily: "Montserrat",
                                                  fontSize: 12),
                                              contentPadding:
                                                  EdgeInsets.fromLTRB(
                                                      20.0, 10.0, 20.0, 10.0),
                                            ),
                                          ),
                                        ]))),
                                Positioned(
                                    top: 0,
                                    left: 0,
                                    child: Text(
                                      'Full name',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                          fontFamily: 'Montserrat',
                                          fontSize: 14,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                              ]))),
                      Positioned(
                          top: 335,
                          left: 25,
                          child: Container(
                              width: 312,
                              height: 74,
                              child: Stack(children: <Widget>[
                                Positioned(
                                    top: 24,
                                    left: 0,
                                    child: Container(
                                        width: 312,
                                        height: 50,
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
                                                  value == null) {
                                                return 'Please Enter Email';
                                              }
                                              return null;
                                            },
                                            controller: profileemail,
                                            textAlign: TextAlign.start,
                                            cursorColor: Colors.black,
                                            keyboardType:
                                                TextInputType.emailAddress,
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              focusedBorder: InputBorder.none,
                                              enabledBorder: InputBorder.none,
                                              errorBorder: InputBorder.none,
                                              disabledBorder: InputBorder.none,
                                              hintText:
                                                  "Enter Full Email Address Here",
                                              hintStyle: TextStyle(
                                                  color: inputcolor,
                                                  fontFamily: "Montserrat",
                                                  fontSize: 12),
                                              contentPadding:
                                                  EdgeInsets.fromLTRB(
                                                      20.0, 10.0, 20.0, 10.0),
                                            ),
                                          ),
                                        ]))),
                                Positioned(
                                    top: 0,
                                    left: 0,
                                    child: Text(
                                      'email address',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                          fontFamily: 'Montserrat',
                                          fontSize: 14,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    )),
                              ]))),
                      Positioned(
                          top: 420,
                          left: 31,
                          child: Container(
                            width: 312,
                            height: 74,
                            child: Stack(children: <Widget>[]),
                          )),
                      Positioned(
                          top: 430,
                          left: 22,
                          child: Container(
                              width: 312,
                              height: 74,
                              child: Stack(children: <Widget>[
                                Positioned(
                                    top: 24,
                                    left: 0,
                                    child: Container(
                                        width: 312,
                                        height: 50,
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
                                                  value == null) {
                                                return 'Please Enter Phone Number';
                                              }
                                              return null;
                                            },
                                            controller: profilenumber,
                                            textAlign: TextAlign.start,
                                            cursorColor: Colors.black,
                                            keyboardType: TextInputType.phone,
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              focusedBorder: InputBorder.none,
                                              enabledBorder: InputBorder.none,
                                              errorBorder: InputBorder.none,
                                              disabledBorder: InputBorder.none,
                                              hintText: profilenumber.text,
                                              hintStyle: TextStyle(
                                                  color: inputcolor,
                                                  fontFamily: "Montserrat",
                                                  fontSize: 12),
                                              contentPadding:
                                                  EdgeInsets.fromLTRB(
                                                      20.0, 10.0, 20.0, 10.0),
                                            ),
                                          ),
                                        ]))),
                                Positioned(
                                    top: 0,
                                    left: 0,
                                    child: GestureDetector(
                                      onTap: () {
                                        //firestore data
                                      },
                                      child: Text(
                                        'Phone Number',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                255, 255, 255, 1),
                                            fontFamily: 'Montserrat',
                                            fontSize: 14,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1),
                                      ),
                                    )),
                              ]))),
                      Positioned(
                        top: 80,
                        left: 112,
                        child: Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: _selectedImage == null
                              ? InkWell(
                                  onTap: () => Profileimg(),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 250,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[300],
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(70)),
                                        child:
                                            Image.asset("assets/lawson.png")),
                                  ),
                                )
                              : InkWell(
                                  onTap: () => Profileimg(),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 250,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[300],
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
                      Positioned(
                          top: 180,
                          left: 224,
                          child: Container(
                              width: 30,
                              height: 30,
                              child: Stack(children: <Widget>[
                                Positioned(
                                    top: 0,
                                    left: 0,
                                    child: Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(30, 30)),
                                        ))),
                                Positioned(
                                    top: 8,
                                    left: 7,
                                    child: Container(
                                        width: 16.688196182250977,
                                        height: 15,
                                        child: Stack(children: <Widget>[
                                          Positioned(
                                            top: 0,
                                            left: 0,

                                            //image picker goes Here
                                            child: InkWell(
                                                onTap: () {
                                                  //getstoreddetails();

                                                  Profileimg();
                                                },
                                                child: Image.asset(
                                                  "assets/attach.png",
                                                  height: 15,
                                                  width: 15,
                                                )),
                                          ),
                                        ]))),
                              ]))),

                      //lastMan

                      Positioned(
                          top: 620,
                          left: 26,
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
                                    left: 40,
                                    child: Container(
                                        width: 237,
                                        height: 40,
                                        child: Stack(children: <Widget>[
                                          Positioned(
                                              top: 0,
                                              left: 0,
                                              child: InkWell(
                                                onTap: () {
                                                  // getstoreddetails();
                                                  if (profileemail
                                                      .text.isEmpty) {
                                                    Fluttertoast.showToast(
                                                        msg:
                                                            "Please Complete fields",
                                                        toastLength:
                                                            Toast.LENGTH_LONG,
                                                        gravity:
                                                            ToastGravity.TOP);
                                                    Navigator.pop(context);
                                                  } else {
                                                    //Navigator
                                                    Navigator.pop(context);
                                                  }
                                                },
                                                child: Container(
                                                    width: 237,
                                                    height: 40,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        topLeft:
                                                            Radius.circular(5),
                                                        topRight:
                                                            Radius.circular(5),
                                                        bottomLeft:
                                                            Radius.circular(5),
                                                        bottomRight:
                                                            Radius.circular(5),
                                                      ),
                                                      color: Color.fromRGBO(
                                                          81, 163, 163, 1),
                                                    ),
                                                    child: Stack(
                                                        children: <Widget>[
                                                          Positioned(
                                                              top: 11,
                                                              left: 85,
                                                              child: Text(
                                                                'DONE ',
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: TextStyle(
                                                                    color: Color
                                                                        .fromRGBO(
                                                                            13,
                                                                            14,
                                                                            14,
                                                                            1),
                                                                    fontFamily:
                                                                        'Montserrat',
                                                                    fontSize:
                                                                        14,
                                                                    letterSpacing:
                                                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                    height: 1),
                                                              )),
                                                        ])),
                                              )),
                                        ]))),
                              ]))),
                    ])),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
