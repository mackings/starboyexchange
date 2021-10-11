

import 'dart:io';

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:path/path.dart';
import 'package:starboyexchange/Data.dart';
import 'package:starboyexchange/account1.dart';
import 'dart:math' as math;
import 'package:flutter_svg/svg.dart';
import 'package:starboyexchange/rate1.dart';
import 'package:path/path.dart' as path;
import 'package:image_picker/image_picker.dart';
import "package:starboyexchange/admin.dart";
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_sms/flutter_sms.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_database/firebase_database.dart';







class Trade2 extends StatefulWidget {
  const Trade2({Key ? key}) : super(key: key);

  @override
  _Trade2State createState() => _Trade2State();
}

class _Trade2State extends State<Trade2> {

  File?  _selectedImage;
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

  //Mailer







  Future SubmitTrade() async{
    FirebaseStorage fs = FirebaseStorage.instance;
    final reference = fs.ref();
    final picturefolder = reference.child("Giftcards").child("Cards");
    picturefolder.putFile(_selectedImage!).whenComplete(() => () async{
     imageLink = await picturefolder.getDownloadURL();
     print("Hellow");
    });




  }

  void Notify() async{
    final Defuser = FirebaseAuth.instance.currentUser;
     final Defusers = Defuser!.email;
     print(Defusers);

    final Database = FirebaseDatabase.instance.reference();
    final store =  await Database.child("Trade Requests").set({ "Name":Defusers,});


    await AwesomeNotifications().createNotification(
        content: NotificationContent(
          id: 1,
          channelKey: "Basics",
          title: "Trade Notifications",
          body: "Trade Verification in progress",
          bigPicture: "asset://assets/lawson.png",
          displayOnForeground: true,
          displayOnBackground: true,
          notificationLayout: NotificationLayout.BigPicture,
          autoCancel: true,
        )
    );
  }


  String message = "This is a test message!";
  List<String> recipents = ["08137159066", "+2348110947817"];

  Future _sendSMS(String message, List<String> recipents) async {
    String _result = await sendSMS(message: message, recipients: recipents);
  }






  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        backgroundColor: green,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  width: 375,
                  height: 812,
                  decoration: BoxDecoration(
                    color : Color.fromRGBO(28, 24, 24, 1),
                  ),
                  child: Stack(
                      children: <Widget>[
                        Positioned(
                            top: -13,
                            left: -10,
                            child: Container(
                                width: 385,
                                height: 725,
                                decoration: BoxDecoration(
                                  borderRadius : BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  ),
                                  boxShadow : [BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, 0.25),
                                      offset: Offset(0,2),
                                      blurRadius: 4
                                  )],
                                  color : Color.fromRGBO(81, 163, 163, 1),
                                ),
                                child: Stack(
                                    children: <Widget>[
                                      Positioned(
                                          top: 65,
                                          left: 298,
                                          child: Container(
                                            width: 40,
                                            //ddddpp
                                            height: 40,
                                              //child: Image.network("https://www.piccolomondotoys.com/components/com_virtuemart/shop_image/product/full/GiftCardImage5e80bdc3b243e.jpg"),

                                              decoration: BoxDecoration(
                                                border : Border.all(
                                                  color: Color.fromRGBO(81, 163, 163, 1),
                                                  width: 1,
                                                ),
                                                borderRadius : BorderRadius.all(Radius.elliptical(40, 40)),
                                              ),
                                          ),
                                      ),Positioned(
                                          top: 76,
                                          left: 103,
                                          child: Text('Upload Gift Cards', textAlign: TextAlign.left, style: TextStyle(
                                              color: Color.fromRGBO(255, 255, 255, 1),
                                              fontFamily: 'Montserrat',
                                              fontSize: 18,
                                              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height: 1
                                          ),)
                                      ),Positioned(
                                          top: 75.6184310913086,
                                          left: 41.76918411254883,
                                          child: Transform.rotate(
                                            angle: 10 * (math.pi / 180),
                                            child: InkWell(
                                              onTap: (){
                                                Navigator.pop(context);
                                              },
                                              child: SvgPicture.asset(
                                                  'assets/arrowleft.svg',
                                                  semanticsLabel: 'vector',
                                                color: Colors.white,
                                              ),
                                            ),
                                          )
                                      ),Positioned(
                                          top: 138,
                                          left: 32,
                                          child: Container(
                                            height: 150,
                                            width: 150,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(10),
                                            ),
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
                                                  color: Colors.white,
                                                ),
                                              ),
                                            )
                                                : InkWell(
                                              onTap: () => getImage(),
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
                                      ),Positioned(
                                          top: 227,
                                          left: 234,
                                          child: Text('Tap To Upload Image', textAlign: TextAlign.center, style: TextStyle(
                                              color: Color.fromRGBO(255, 255, 255, 1),
                                              fontFamily: 'Montserrat',
                                              fontSize: 10,
                                              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height: 1
                                          ),)
                                      ),Positioned(
                                          top: 188.7532196044922,
                                          left: 281.306640625,
                                          child: InkWell(
                                            onTap: (){
                                              getImage();

                                            },
                                            child: SvgPicture.asset(
                                                'assets/cloudup.svg',
                                                semanticsLabel: 'vector',
                                              height: 40,
                                              width: 50,
                                              color: Colors.white,
                                            ),
                                          ),
                                      ),
                                    ]
                                )
                            )
                        ),Positioned(
                            top: 600,
                            left: 29,
                            child: Container(
                                width: 316,
                                height: 67,
                                decoration: BoxDecoration(
                                  borderRadius : BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  ),
                                  boxShadow : [BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, 0.25),
                                      offset: Offset(0,4),
                                      blurRadius: 3
                                  )],
                                  color : Color.fromRGBO(255, 255, 255, 1),
                                ),
                                child: Stack(
                                    children: <Widget>[
                                      Positioned(
                                          top: 14,
                                          left: 40,
                                          child: Container(
                                              width: 237,
                                              height: 40,

                                              child: Stack(
                                                  children: <Widget>[
                                                    Positioned(
                                                        top: 0,
                                                        left: 0,
                                                        child: InkWell(
                                                          onTap: (){

                                                            Notify();
                                                            SubmitTrade();
                                                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Rate1()));
                                                          },
                                                          child: Container(
                                                              width: 237,
                                                              height: 40,
                                                              decoration: BoxDecoration(
                                                                borderRadius : BorderRadius.only(
                                                                  topLeft: Radius.circular(5),
                                                                  topRight: Radius.circular(5),
                                                                  bottomLeft: Radius.circular(5),
                                                                  bottomRight: Radius.circular(5),
                                                                ),
                                                                color : Color.fromRGBO(81, 163, 163, 1),
                                                              ),
                                                              child: Stack(
                                                                  children: <Widget>[
                                                                    Positioned(
                                                                        top: 11,
                                                                        left: 62,
                                                                        child: Text('SUBMIT TRADE', textAlign: TextAlign.left, style: TextStyle(
                                                                            color: Color.fromRGBO(13, 14, 14, 1),
                                                                            fontFamily: 'Montserrat',
                                                                            fontSize: 14,
                                                                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                                            fontWeight: FontWeight.normal,
                                                                            height: 1
                                                                        ),)
                                                                    ),
                                                                  ]
                                                              )
                                                          ),
                                                        )
                                                    ),
                                                  ]
                                              )
                                          )
                                      ),
                                    ]
                                )
                            )
                        ),
                      ]
                  )
              )

            ],
          ),
        ),



        ),
      );
  }
}
