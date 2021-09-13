import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:starboyexchange/account1.dart';

class Settings extends StatefulWidget {
  const Settings({Key ? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool status = false;
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
                            top: 76,
                            left: 142,
                            child: Text('Settings', textAlign: TextAlign.left, style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontFamily: 'Montserrat',
                                fontSize: 18,
                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1
                            ),)
                        ),Positioned(
                            top: 116,
                            left: 36,
                            child: Text('Enable Notifications', textAlign: TextAlign.left, style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontFamily: 'Montserrat',
                                fontSize: 14,
                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1
                            ),)
                        ),Positioned(
                            top: 157,
                            left: 36,
                            child: Text('Change Password', textAlign: TextAlign.left, style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontFamily: 'Montserrat',
                                fontSize: 14,
                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1
                            ),)
                        ),Positioned(
                            top: 198,
                            left: 36,
                            child: Text('About', textAlign: TextAlign.left, style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontFamily: 'Montserrat',
                                fontSize: 14,
                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1
                            ),)
                        ),Positioned(
                            top: 113,
                            left: 280,
                            child: Container(
                                width: 67,
                                height: 25,

                                child: Stack(
                                    children: <Widget>[
                                      Positioned(
                                          top: 3,
                                          left: 0,
                                          child: Container(
                                              width: 67,
                                              height: 20,
                                              decoration: BoxDecoration(
                                                borderRadius : BorderRadius.only(
                                                  topLeft: Radius.circular(20),
                                                  topRight: Radius.circular(20),
                                                  bottomLeft: Radius.circular(20),
                                                  bottomRight: Radius.circular(20),
                                                ),
                                                color : Color.fromRGBO(196, 196, 196, 1),
                                              ),
                                              child: Stack(
                                                  children: <Widget>[

                                                  ]
                                              )
                                          )
                                      ),Positioned(
                                          top: 0,
                                          left: 33,
                                          child: Container(
                                              width: 34,
                                              height: 25,
                                              decoration: BoxDecoration(
                                                borderRadius : BorderRadius.only(
                                                  topLeft: Radius.circular(20),
                                                  topRight: Radius.circular(20),
                                                  bottomLeft: Radius.circular(20),
                                                  bottomRight: Radius.circular(20),
                                                ),
                                                color : Color.fromRGBO(13, 14, 14, 1),
                                              ),
                                              child: Stack(
                                                  children: <Widget>[
                                                    //toggle
                                                  FlutterSwitch(
                                                    width: 125.0,
                                                    height: 55.0,
                                                    valueFontSize: 25.0,
                                                    toggleSize: 45.0,
                                                    value: status,
                                                    borderRadius: 30.0,
                                                    padding: 8.0,
                                                    showOnOff: true,
                                                    onToggle: (val) {
                                                      setState(() {
                                                        status = val;
                                                      });
                                                    },
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
