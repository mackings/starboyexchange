import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:starboyexchange/account1.dart';
import 'dart:math' as math;
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

class History2 extends StatefulWidget {
  const History2({Key? key}) : super(key: key);

  @override
  _History2State createState() => _History2State();
}

class _History2State extends State<History2> {
  bool transactsucess = true;

  void Setstatus() async{

    if(FirebaseAuth.instance.currentUser!.emailVerified){
      setState(() {
        Status=Status2;

      });
    }else{
     return null;
    }


  }

  String Status = "Pending";
  String Status2 = "Approved";


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
                    color : Color.fromRGBO(13, 14, 14, 1),
                  ),
                  child: Stack(
                      children: <Widget>[
                        Positioned(
                            top: -28,
                            left: 0,
                            child: Container(
                                width: 375,
                                height: 852,
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
                                              height: 40,
                                              decoration: BoxDecoration(
                                                border : Border.all(
                                                  color: Color.fromRGBO(81, 163, 163, 1),
                                                  width: 1,
                                                ),
                                                image : DecorationImage(
                                                    image: AssetImage('assets/lawson.png'),
                                                    fit: BoxFit.fitWidth
                                                ),
                                                borderRadius : BorderRadius.all(Radius.elliptical(40, 40)),
                                              )
                                          )
                                      ),Positioned(
                                          top: 71,
                                          left: 151,
                                          child: Text('history', textAlign: TextAlign.left, style: TextStyle(
                                              color: Color.fromRGBO(255, 255, 255, 1),
                                              fontFamily: 'Montserrat',
                                              fontSize: 18,
                                              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height: 1
                                          ),)
                                      ),Positioned(
                                          top: 279,
                                          left: 32,
                                          child: Container(
                                              width: 161,
                                              height: 19,

                                              child: Stack(
                                                  children: <Widget>[
                                                    Positioned(
                                                        top: 0,
                                                        left: 0,
                                                        child: Text('Transaction details', textAlign: TextAlign.left, style: TextStyle(
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
                                          top: 279,
                                          left: 32,
                                          child: Container(
                                              width: 161,
                                              height: 19,

                                              child: Stack(
                                                  children: <Widget>[
                                                    Positioned(
                                                        top: 0,
                                                        left: 0,
                                                        child: Text('Transaction details', textAlign: TextAlign.left, style: TextStyle(
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
                                          top: 434,
                                          left: 32,
                                          child: Container(
                                              width: 161,
                                              height: 19,

                                              child: Stack(
                                                  children: <Widget>[
                                                    Positioned(
                                                        top: 0,
                                                        left: 0,
                                                        child: InkWell(
                                                          onTap: (){
                                                            Setstatus();
                                                          },
                                                          child: Text('Tap for Info', textAlign: TextAlign.left, style: TextStyle(
                                                              color: Color.fromRGBO(255, 255, 255, 1),
                                                              fontFamily: 'Montserrat',
                                                              fontSize: 14,
                                                              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                              fontWeight: FontWeight.normal,
                                                              height: 1
                                                          ),),
                                                        )
                                                    ),
                                                  ]
                                              )
                                          )
                                      ),Positioned(
                                          top: 589,
                                          left: 32,
                                          child: Container(
                                              width: 161,
                                              height: 19,

                                              child: Stack(
                                                  children: <Widget>[
                                                    Positioned(
                                                        top: 0,
                                                        left: 0,
                                                        child: Text('Comments', textAlign: TextAlign.left, style: TextStyle(
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
                                          top: 70.58458709716797,
                                          left: 20.684326171875,
                                          child: Transform.rotate(
                                            angle: 10 * (math.pi / 180),
                                            child: SvgPicture.asset(
                                                'assets/arrowleft.svg',
                                                semanticsLabel: 'vector',
                                              color: Colors.white,
                                            ),
                                          )
                                      ),Positioned(
                                          top: 118,
                                          left: 31,
                                          child: Container(
                                              width: 312,
                                              height: 138,
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
                                                    Positioned(
                                                        top: 57,
                                                        left: 143,
                                                        child: Container(
                                                            width: 26.917816162109375,
                                                            height: 25,

                                                            child: Stack(
                                                                children: <Widget>[
                                                                  Positioned(
                                                                      top: 5.357421875,
                                                                      left: 5.047095775604248,
                                                                      child: SvgPicture.asset(
                                                                          'assets/images/vector.svg',
                                                                          semanticsLabel: 'vector'
                                                                      ),
                                                                  ),Positioned(
                                                                      top: 0,
                                                                      left: 0,
                                                                      child: SvgPicture.asset(
                                                                          'assets/image.svg',
                                                                          semanticsLabel: 'vector',
                                                                        height: 20,
                                                                        width: 20,
                                                                        color: Colors.white,
                                                                      ),
                                                                  ),
                                                                ]
                                                            )
                                                        )
                                                    ),
                                                  ]
                                              )
                                          )
                                      ),Positioned(
                                          top: 312,
                                          left: 31,
                                          child: Container(
                                              width: 312,
                                              height: 107,
                                              decoration: BoxDecoration(
                                                borderRadius : BorderRadius.only(
                                                  topLeft: Radius.circular(5),
                                                  topRight: Radius.circular(5),
                                                  bottomLeft: Radius.circular(5),
                                                  bottomRight: Radius.circular(5),
                                                ),
                                                boxShadow : [BoxShadow(
                                                    color: Color.fromRGBO(0, 0, 0, 0.25),
                                                    offset: Offset(0,1),
                                                    blurRadius: 4
                                                )],
                                                color : Color.fromRGBO(81, 163, 163, 1),
                                                border : Border.all(
                                                  color: Color.fromRGBO(81, 163, 163, 1),
                                                  width: 1,
                                                ),
                                              ),
                                              child: Stack(
                                                  children: <Widget>[
                                                    Positioned(
                                                        top: 16,
                                                        left: 18,
                                                        child: Container(
                                                            width: 128,
                                                            height: 19,

                                                            child: Stack(
                                                                children: <Widget>[
                                                                  Positioned(
                                                                      top: 0,
                                                                      left: 0,
                                                                      child: Text('Card amount :', textAlign: TextAlign.left, style: TextStyle(
                                                                          color: Color.fromRGBO(196, 196, 196, 1),
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
                                                        top: 42,
                                                        left: 18,
                                                        child: Container(
                                                            width: 128,
                                                            height: 19,

                                                            child: Stack(
                                                                children: <Widget>[
                                                                  Positioned(
                                                                      top: 0,
                                                                      left: 0,
                                                                      child: Text('Payable amount :', textAlign: TextAlign.left, style: TextStyle(
                                                                          color: Color.fromRGBO(196, 196, 196, 1),
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
                                                        top: 68,
                                                        left: 18,
                                                        child: Container(
                                                            width: 128,
                                                            height: 19,

                                                            child: Stack(
                                                                children: <Widget>[
                                                                  Positioned(
                                                                      top: 0,
                                                                      left: 0,
                                                                      child: Text('order ID :', textAlign: TextAlign.left, style: TextStyle(
                                                                          color: Color.fromRGBO(196, 196, 196, 1),
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
                                                    ),
                                                  ]
                                              )
                                          )
                                      ),Positioned(
                                          top: 467,
                                          left: 31,
                                          child: Container(
                                              width: 312,
                                              height: 107,
                                              decoration: BoxDecoration(
                                                borderRadius : BorderRadius.only(
                                                  topLeft: Radius.circular(5),
                                                  topRight: Radius.circular(5),
                                                  bottomLeft: Radius.circular(5),
                                                  bottomRight: Radius.circular(5),
                                                ),
                                                boxShadow : [BoxShadow(
                                                    color: Color.fromRGBO(0, 0, 0, 0.25),
                                                    offset: Offset(0,1),
                                                    blurRadius: 4
                                                )],
                                                color : Color.fromRGBO(81, 163, 163, 1),
                                                border : Border.all(
                                                  color: Color.fromRGBO(81, 163, 163, 1),
                                                  width: 1,
                                                ),
                                              ),
                                              child: Stack(
                                                  children: <Widget>[
                                                    Positioned(
                                                        top: 13,
                                                        left: 18,
                                                        child: Container(
                                                            width: 128,
                                                            height: 19,

                                                            child: Stack(
                                                                children: <Widget>[
                                                                  Positioned(
                                                                      top: 0,
                                                                      left: 0,
                                                                      child: Text('Card Status :', textAlign: TextAlign.left, style: TextStyle(
                                                                          color: Color.fromRGBO(196, 196, 196, 1),
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
                                                        top: 45,
                                                        left: 18,
                                                        child: Container(
                                                            width: 141,
                                                            height: 19,

                                                            child: Stack(
                                                                children: <Widget>[
                                                                  Positioned(
                                                                      top: 0,
                                                                      left: 0,
                                                                      child: Text('Payable Currency :', textAlign: TextAlign.left, style: TextStyle(
                                                                          color: Color.fromRGBO(196, 196, 196, 1),
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
                                                        top: 77,
                                                        left: 18,
                                                        child: Container(
                                                            width: 141,
                                                            height: 19,

                                                            child: Stack(
                                                                children: <Widget>[
                                                                  Positioned(
                                                                      top: 0,
                                                                      left: 0,
                                                                      child: Text('Transaction status :', textAlign: TextAlign.left, style: TextStyle(
                                                                          color: Color.fromRGBO(196, 196, 196, 1),
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
                                                        top: 8,
                                                        left: 128,
                                                        child: Container(
                                                            width: 90,
                                                            height: 28,
                                                            decoration: BoxDecoration(
                                                              borderRadius : BorderRadius.only(
                                                                topLeft: Radius.circular(20),
                                                                topRight: Radius.circular(20),
                                                                bottomLeft: Radius.circular(20),
                                                                bottomRight: Radius.circular(20),
                                                              ),
                                                              color : Color.fromRGBO(13, 13, 13, 1),
                                                              border : Border.all(
                                                                color: Color.fromRGBO(0, 0, 0, 1),
                                                                width: 1,
                                                              ),
                                                            ),
                                                            child: Stack(
                                                                children: <Widget>[
                                                                  Positioned(
                                                                      top: 6,
                                                                      left: 26,
                                                                      child: Container(
                                                                          width: 38,
                                                                          height: 16,

                                                                          child: Stack(
                                                                              children: <Widget>[
                                                                                Positioned(
                                                                                    top: 0,
                                                                                    left: 0,
                                                                                    child: InkWell(
                                                                                      onTap: (){

                                                                                      },
                                                                                      child: Text('Valid', textAlign: TextAlign.left, style: TextStyle(
                                                                                          color: Color.fromRGBO(255, 255, 255, 1),
                                                                                          fontFamily: 'Montserrat',
                                                                                          fontSize: 14,
                                                                                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                                                          fontWeight: FontWeight.normal,
                                                                                          height: 1
                                                                                      ),),
                                                                                    )
                                                                                ),
                                                                              ]
                                                                          )
                                                                      )
                                                                  ),
                                                                ]
                                                            )
                                                        )
                                                    ),Positioned(
                                                        top: 72,
                                                        left: 159,
                                                        child: Container(
                                                            width: 90,
                                                            height: 28,
                                                            decoration: BoxDecoration(
                                                              borderRadius : BorderRadius.only(
                                                                topLeft: Radius.circular(20),
                                                                topRight: Radius.circular(20),
                                                                bottomLeft: Radius.circular(20),
                                                                bottomRight: Radius.circular(20),
                                                              ),
                                                              color : Color.fromRGBO(13, 13, 13, 1),
                                                              border : Border.all(
                                                                color: Color.fromRGBO(0, 0, 0, 1),
                                                                width: 1,
                                                              ),
                                                            ),
                                                            child: Stack(
                                                                children: <Widget>[
                                                                  Positioned(
                                                                      top: 6,
                                                                      left: 14,
                                                                      child: Container(
                                                                          width: 62,
                                                                          height: 16,

                                                                          child: Stack(
                                                                              children: <Widget>[
                                                                                Positioned(
                                                                                    top: 0,
                                                                                    left: 0,
                                                                                    child: Text('${Status.toString()}', textAlign: TextAlign.left, style: TextStyle(
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
                                                                  ),
                                                                ]
                                                            )
                                                        )
                                                    ),Positioned(
                                                        top: 45,
                                                        left: 156,
                                                        child: Container(
                                                            width: 42,
                                                            height: 19,

                                                            child: Stack(
                                                                children: <Widget>[
                                                                  Positioned(
                                                                      top: 0,
                                                                      left: 0,
                                                                      child: Text('Naira', textAlign: TextAlign.left, style: TextStyle(
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
                                                    ),
                                                  ]
                                              )
                                          )
                                      ),Positioned(
                                          top: 622,
                                          left: 31,
                                          child: Container(
                                              width: 312,
                                              height: 107,
                                              decoration: BoxDecoration(
                                                borderRadius : BorderRadius.only(
                                                  topLeft: Radius.circular(5),
                                                  topRight: Radius.circular(5),
                                                  bottomLeft: Radius.circular(5),
                                                  bottomRight: Radius.circular(5),
                                                ),
                                                boxShadow : [BoxShadow(
                                                    color: Color.fromRGBO(0, 0, 0, 0.25),
                                                    offset: Offset(0,1),
                                                    blurRadius: 4
                                                )],
                                                color : Color.fromRGBO(81, 163, 163, 1),
                                                border : Border.all(
                                                  color: Color.fromRGBO(81, 163, 163, 1),
                                                  width: 1,
                                                ),
                                              ),
                                              child: Stack(
                                                  children: <Widget>[
                                                    Positioned(
                                                        top: 16,
                                                        left: 18,
                                                        child: Container(
                                                            width: 128,
                                                            height: 19,

                                                            child: Stack(
                                                                children: <Widget>[
                                                                  Positioned(
                                                                      top: 0,
                                                                      left: 0,
                                                                      child: Text('No remarks', textAlign: TextAlign.left, style: TextStyle(
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
                                                    ),
                                                  ]
                                              )
                                          )
                                      ),
                                    ]
                                )
                            )
                        ),Positioned(
                            top: 873.2861328125,
                            left: 107,
                            child: Transform.rotate(
                              angle: 34.83850442938349 * (math.pi / 180),
                              child: SvgPicture.asset(
                                  'assets/images/vector.svg',
                                  semanticsLabel: 'vector'
                              ),
                            )
                        ),Positioned(
                            top: 723,
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
                                          left: 22,
                                          child: Container(
                                              width: 40,
                                              height: 44,

                                              child: Stack(
                                                  children: <Widget>[
                                                    Positioned(
                                                        top: 0,
                                                        left: 5,
                                                        child: SvgPicture.asset(
                                                            'assets/home.svg',
                                                            semanticsLabel: 'vector'
                                                        ),
                                                    ),Positioned(
                                                        top: 28,
                                                        left: 0,
                                                        child: Text('Home', textAlign: TextAlign.left, style: TextStyle(
                                                            color: Color.fromRGBO(81, 163, 163, 0.5),
                                                            fontFamily: 'Montserrat',
                                                            fontSize: 12,
                                                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                            fontWeight: FontWeight.normal,
                                                            height: 1
                                                        ),)
                                                    ),
                                                  ]
                                              )
                                          )
                                      ),Positioned(
                                          top: 14,
                                          left: 84,
                                          child: Container(
                                              width: 64,
                                              height: 42,

                                              child: Stack(
                                                  children: <Widget>[
                                                    Positioned(
                                                        top: 28,
                                                        left: 0,
                                                        child: Container(
                                                            width: 64,
                                                            height: 14,

                                                            child: Stack(
                                                                children: <Widget>[
                                                                  Positioned(
                                                                      top: 0,
                                                                      left: 0,
                                                                      child: Text(' Calculate', textAlign: TextAlign.left, style: TextStyle(
                                                                          color: Color.fromRGBO(81, 163, 163, 0.5),
                                                                          fontFamily: 'Montserrat',
                                                                          fontSize: 12,
                                                                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                                          fontWeight: FontWeight.normal,
                                                                          height: 1
                                                                      ),)
                                                                  ),
                                                                ]
                                                            )
                                                        )
                                                    ),Positioned(
                                                        top: 0,
                                                        left: 21,
                                                        child: SvgPicture.asset(
                                                            'assets/calculator.svg',
                                                            semanticsLabel: 'vector',
                                                          height: 20,
                                                          width: 20,
                                                        ),
                                                    ),
                                                  ]
                                              )
                                          )
                                      ),Positioned(
                                          top: 14,
                                          left: 173,
                                          child: Container(
                                              width: 46,
                                              height: 47,

                                              child: Stack(
                                                  children: <Widget>[
                                                    Positioned(
                                                        top: 28,
                                                        left: 0,
                                                        child: Container(
                                                            width: 46,
                                                            height: 19,

                                                            child: Stack(
                                                                children: <Widget>[
                                                                  Positioned(
                                                                      top: 0,
                                                                      left: 0,
                                                                      child: Text('History', textAlign: TextAlign.left, style: TextStyle(
                                                                          color: Color.fromRGBO(13, 14, 14, 1),
                                                                          fontFamily: 'Montserrat',
                                                                          fontSize: 12,
                                                                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                                          fontWeight: FontWeight.normal,
                                                                          height: 1
                                                                      ),)
                                                                  ),
                                                                ]
                                                            )
                                                        )
                                                    ),Positioned(
                                                        top: 0,
                                                        left: 11,
                                                        child: Container(
                                                            width: 24,
                                                            height: 23,

                                                            child: Stack(
                                                                children: <Widget>[
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
                                                                                    child: SvgPicture.asset(
                                                                                        'assets/search.svg',
                                                                                        semanticsLabel: 'vector',
                                                                                      width: 20,
                                                                                      height: 20,
                                                                                    ),
                                                                                ),Positioned(
                                                                                    top: 12.7774658203125,
                                                                                    left: 13.3333740234375,
                                                                                    child: SvgPicture.asset(
                                                                                        'assets/atm.svg',
                                                                                        semanticsLabel: 'vector',
                                                                                      width: 20,
                                                                                      height: 20,
                                                                                    ),
                                                                                ),Positioned(
                                                                                    top: 19.16666603088379,
                                                                                    left: 20.666748046875,
                                                                                    child: SvgPicture.asset(
                                                                                        'assets/images/vector.svg',
                                                                                        semanticsLabel: 'vector'
                                                                                    ),
                                                                                ),Positioned(
                                                                                    top: 6.38873291015625,
                                                                                    left: 5.3333740234375,
                                                                                    child: SvgPicture.asset(
                                                                                        'assets/images/vector.svg',
                                                                                        semanticsLabel: 'vector'
                                                                                    ),
                                                                                ),Positioned(
                                                                                    top: 11.5,
                                                                                    left: 5.3333740234375,
                                                                                    child: SvgPicture.asset(
                                                                                        'assets/images/vector.svg',
                                                                                        semanticsLabel: 'vector'
                                                                                    ),
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
                                      ),Positioned(
                                          top: 14,
                                          left: 242,
                                          child: Container(
                                              width: 67,
                                              height: 40,

                                              child: Stack(
                                                  children: <Widget>[
                                                    Positioned(
                                                        top: 28,
                                                        left: 0,
                                                        child: Container(
                                                            width: 67,
                                                            height: 12,

                                                            child: Stack(
                                                                children: <Widget>[
                                                                  Positioned(
                                                                      top: 0,
                                                                      left: 0,
                                                                      child: Text('withdraw', textAlign: TextAlign.left, style: TextStyle(
                                                                          color: Color.fromRGBO(81, 163, 163, 0.5),
                                                                          fontFamily: 'Montserrat',
                                                                          fontSize: 12,
                                                                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                                          fontWeight: FontWeight.normal,
                                                                          height: 1
                                                                      ),)
                                                                  ),
                                                                ]
                                                            )
                                                        )
                                                    ),Positioned(
                                                        top: 0,
                                                        left: 20,
                                                        child: Container(
                                                            width: 27.5,
                                                            height: 25,

                                                            child: Stack(
                                                                children: <Widget>[
                                                                  Positioned(
                                                                      top: 0,
                                                                      left: 0,
                                                                      child: SvgPicture.asset(
                                                                          'assets/atm.svg',
                                                                          semanticsLabel: 'vector',
                                                                        height: 20,
                                                                        width: 20,
                                                                      ),
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
                        ),Positioned(
                            top: -158,
                            left: -851,
                            child: Container(
                                width: 2274,
                                height: 112,

                                child: Stack(
                                    children: <Widget>[
                                      Positioned(
                                          top: 0,
                                          left: 0,
                                          child: Container(
                                              width: 2274,
                                              height: 112,
                                              decoration: BoxDecoration(
                                                color : Color.fromRGBO(255, 255, 255, 1),
                                              )
                                          )
                                      ),Positioned(
                                          top: 38.342342376708984,
                                          left: 984,
                                          child: Text('HISTORY', textAlign: TextAlign.left, style: TextStyle(
                                              color: Color.fromRGBO(0, 0, 0, 1),
                                              fontFamily: 'Montserrat',
                                              fontSize: 64,
                                              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height: 1
                                          ),)
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
