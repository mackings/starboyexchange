import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hive/hive.dart';
import 'package:image_picker/image_picker.dart';
import 'package:starboyexchange/account1.dart';
import 'dart:io';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:path_provider/path_provider.dart';

import 'mainui.dart';

class Person {
  String name;
  int email;

  Person({required this.name, required this.email,});
}


class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {






  TextEditingController profilename =TextEditingController();
  TextEditingController profileemail=TextEditingController();
  TextEditingController profileusername=TextEditingController();
  TextEditingController profilenumber=TextEditingController();



   savedata() async{
     SharedPreferences prefs = SharedPreferences.getInstance() as SharedPreferences;
     setState(() {
       profileusername = prefs.getString("profileusername") as TextEditingController;
     });

   }

   Loaduser()async{
     SharedPreferences mypref = SharedPreferences.getInstance() as SharedPreferences;
     setState(() {
       profilename = mypref.setString("profilename", profilename.text) as TextEditingController;
     });

   }


   addinfo() async{
     await Hive.openBox("ProfileDetails");
     var box = Hive.box("ProfileNames");
     await box.put("name", profilename.text);
     var name = box.get(profilename.text);
     print(name);

   }







  File? _selectedImage;
  final picker = ImagePicker();

  Future Profileimg() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _selectedImage = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
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
                  height: 700,
                  decoration: BoxDecoration(
                    borderRadius : BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5),
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
                            top: 36,
                            left: 151,
                            child: Text(profileusername.text, textAlign: TextAlign.left, style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontFamily: 'Montserrat',
                                fontSize: 18,
                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1
                            ),)
                        ),Positioned(
                            top: 252,
                            left: 31,
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
                                                    TextFormField(
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
                                                        hintText: "Enter Full Email Address Here",hintStyle: TextStyle(color: inputcolor,fontFamily: "Montserrat",fontSize: 12),
                                                        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                                                      ),
                                                    ),
                                                  ]
                                              )
                                          )
                                      ),Positioned(
                                          top: 0,
                                          left: 0,
                                          child: Text('Full name', textAlign: TextAlign.left, style: TextStyle(
                                              color: Color.fromRGBO(255, 255, 255, 1),
                                              fontFamily: 'Montserrat',
                                              fontSize: 14,
                                              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height: 1
                                          ),)
                                      ),
                                    ]
                                )
                            )
                        ),Positioned(
                            top: 335,
                            left: 31,
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
                                                    TextFormField(
                                                      controller: profileemail,
                                                      textAlign: TextAlign.start,
                                                      cursorColor: Colors.black,
                                                      keyboardType: TextInputType.emailAddress,
                                                      decoration: InputDecoration(
                                                        border: InputBorder.none,
                                                        focusedBorder: InputBorder.none,
                                                        enabledBorder: InputBorder.none,
                                                        errorBorder: InputBorder.none,
                                                        disabledBorder: InputBorder.none,
                                                        hintText: "Enter Full Email Address Here",hintStyle: TextStyle(color: inputcolor,fontFamily: "Montserrat",fontSize: 12),
                                                        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                                                      ),
                                                    ),
                                                  ]
                                              )
                                          )
                                      ),Positioned(
                                          top: 0,
                                          left: 0,
                                          child: Text('email address', textAlign: TextAlign.left, style: TextStyle(
                                              color: Color.fromRGBO(255, 255, 255, 1),
                                              fontFamily: 'Montserrat',
                                              fontSize: 14,
                                              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height: 1
                                          ),)
                                      ),
                                    ]
                                )
                            )
                        ),Positioned(
                            top: 420,
                            left: 31,
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

                                                    TextFormField(
                                                      controller: profileusername,
                                                      textAlign: TextAlign.start,
                                                      cursorColor: Colors.black,
                                                      keyboardType: TextInputType.name,
                                                      decoration: InputDecoration(
                                                        border: InputBorder.none,
                                                        focusedBorder: InputBorder.none,
                                                        enabledBorder: InputBorder.none,
                                                        errorBorder: InputBorder.none,
                                                        disabledBorder: InputBorder.none,
                                                        hintText: "Enter Username Here",hintStyle: TextStyle(color: inputcolor,fontFamily: "Montserrat",fontSize: 12),
                                                        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                                                      ),
                                                    ),
                                                  ]
                                              )
                                          )
                                      ),Positioned(
                                          top: 0,
                                          left: 0,
                                          child: Text('Username', textAlign: TextAlign.left, style: TextStyle(
                                              color: Color.fromRGBO(255, 255, 255, 1),
                                              fontFamily: 'Montserrat',
                                              fontSize: 14,
                                              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height: 1
                                          ),)
                                      ),
                                    ]
                                ),
                            )
                        ),Positioned(
                            top: 510,
                            left: 31,
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
                                                    TextFormField(
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
                                                        hintText: "Enter Phone Number Here",hintStyle: TextStyle(color: inputcolor,fontFamily: "Montserrat",fontSize: 12),
                                                        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                                                      ),
                                                    ),

                                                  ]
                                              )
                                          )
                                      ),
                                      Positioned(
                                          top: 0,
                                          left: 0,
                                          child: Text('Phone Number', textAlign: TextAlign.left, style: TextStyle(
                                              color: Color.fromRGBO(255, 255, 255, 1),
                                              fontFamily: 'Montserrat',
                                              fontSize: 14,
                                              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height: 1
                                          ),)
                                      ),



                                    ]
                                )
                            )
                        ),Positioned(
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
                                      borderRadius: BorderRadius.circular(70)
                                    ),
                                      child: Image.asset("assets/signat.png")),
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
                        ),Positioned(
                            top: 180,
                            left: 224,
                            child: Container(
                                width: 30,
                                height: 30,

                                child: Stack(
                                    children: <Widget>[
                                      Positioned(
                                          top: 0,
                                          left: 0,
                                          child: Container(
                                              width: 30,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                color : Color.fromRGBO(255, 255, 255, 1),
                                                borderRadius : BorderRadius.all(Radius.elliptical(30, 30)),
                                              )
                                          )
                                      ),Positioned(
                                          top: 8,
                                          left: 7,
                                          child: Container(
                                              width: 16.688196182250977,
                                              height: 15,

                                              child: Stack(
                                                  children: <Widget>[
                                                    Positioned(
                                                        top: 0,
                                                        left: 0,

                                                        //image picker goes Here
                                                        child: InkWell(
                                                          onTap: (){
                                                            Profileimg();
                                                          },
                                                            child: Image.asset("assets/attach.png",height: 15,width: 15,)),
                                                    ),
                                                  ]
                                              )
                                          )
                                      ),
                                    ]
                                )
                            )
                        ),

                       //lastMan

                        Positioned(
                            top: 620,
                            left: 26,
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
                                                            addinfo();
                                                            savedata();
                                                           Navigator.push(context, MaterialPageRoute(builder: (context)=>Mainui(
                                                             hisname:profilename.text,
                                                             hisemail:profileemail.text,
                                                             hisusername:profileusername.text,
                                                             hisnumber:profilenumber.text,
                                                           )));
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
                                                                        left: 85,
                                                                        child: Text('SUBMIT ', textAlign: TextAlign.left, style: TextStyle(
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
              ),


            ],
          ),
        ),
      ),
    );
  }
}
