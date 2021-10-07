import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:starboyexchange/account1.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:open_url/open_url.dart';


var whatsapp = ("https://wa.me/2348057572197?text=Hello%20De'prime%2C%20I'm%20Hello Star %20in%20Exchange%20Lets Transact");
void _launchURL() async =>
    await canLaunch(whatsapp) ? await launch(whatsapp) : throw 'Could not launch $whatsapp';


class Helpandsupport extends StatefulWidget {
  const Helpandsupport({Key ?key}) : super(key: key);

  @override
  _HelpandsupportState createState() => _HelpandsupportState();
}

class _HelpandsupportState extends State<Helpandsupport> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
                            left: 101,
                            child: Text('Help and Support', textAlign: TextAlign.left, style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontFamily: 'Montserrat',
                                fontSize: 18,
                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1
                            ),)
                        ),

                         //new







                        Positioned(
                            top: 145,
                            left: 166,
                            child: Text('Help', textAlign: TextAlign.left, style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontFamily: 'Montserrat',
                                fontSize: 14,
                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1
                            ),)
                        ),Positioned(
                            top: 283,
                            left: 133,
                            child: Text('Contact Us on', textAlign: TextAlign.left, style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontFamily: 'Montserrat',
                                fontSize: 14,
                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1
                            ),)
                        ),Positioned(
                            top: 452,
                            left: 136,
                            child: Text('Follow us on', textAlign: TextAlign.left, style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontFamily: 'Montserrat',
                                fontSize: 14,
                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1
                            ),)
                        ),Positioned(
                            top: 337,
                            left: 126,
                            child: Container(
                                width: 30.000089645385742,
                                height: 30,

                                child: Stack(
                                    children: <Widget>[
                                      Positioned(
                                        top: 0,
                                        left: 15.77395248413086,
                                        child: InkWell(
                                          onTap: (){
                                            print("Chrome");
                                          },
                                            child: Image.asset("assets/chrome.png")),
                                      ),Positioned(
                                        top: 1.8718925714492798,
                                        left: 2.2737367544323206e-13,
                                        child: Image.asset("assets/phone.png",height: 20,width: 30,),
                                      ),
                                    ]
                                )
                            )
                        ),Positioned(
                          top: 337,
                          left: 215,
                          child: InkWell(
                            onTap: (){
                              _launchURL();

                            },
                              child: Image.asset("assets/whatsapp.png",height: 20,width: 30,)),
                        ),Positioned(
                            top: 511,
                            left: 77,
                            child: Container(
                                width: 30.000558853149414,
                                height: 30,

                                child: Stack(
                                    children: <Widget>[
                                      Positioned(
                                        top: 0,
                                        left: 0,
                                        child: Image.asset("assets/twitter.png",height: 20,width: 30,),
                                      ),
                                    ]
                                )
                            )
                        ),Positioned(
                          top: 511,
                          left: 172,
                          child: Image.asset("assets/instagram.png",height: 20,width: 30,),
                        ),Positioned(
                          top: 511,
                          left: 267,
                          child: Image.asset("assets/facebook.png",height: 20,width: 30,),
                        ),Positioned(
                            top: 178,
                            left: 172,
                            child: Container(
                                width: 29.862791061401367,
                                height: 30.000394821166992,

                                child: Stack(
                                    children: <Widget>[
                                      //help/support
                                    Image.asset("assets/chrome.png",height: 80,width: 50,),

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
