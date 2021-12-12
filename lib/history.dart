import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:starboyexchange/history2.dart';
import 'package:starboyexchange/mainui.dart';
import 'package:starboyexchange/withdraw.dart';


class History1 extends StatefulWidget {
  const History1({Key? key}) : super(key: key);

  @override
  _History1State createState() => _History1State();
}

class _History1State extends State<History1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height + 10,
                  decoration: BoxDecoration(
                    borderRadius : BorderRadius.only(
                     // topLeft: Radius.circular(20),
                      //topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
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
                                //  image : DecorationImage(
                                 //     image: AssetImage('assets/lawson.png'),
                                 //     fit: BoxFit.fitWidth
                                 // ),
                                  borderRadius : BorderRadius.all(Radius.elliptical(40, 40)),
                                )
                            )
                        ),Positioned(
                            top: 77,
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
                            top: 77.61328125,
                            left: 30,
                            child: Container(
                                width: 22.611940383911133,
                                height: 15,

                                child: Stack(
                                    children: <Widget>[
                                      Positioned(
                                          top: 0,
                                          left: 0,
                                          child: Container(
                                              width: 22.611940383911133,
                                              height: 15,

                                              child: Stack(
                                                  children: <Widget>[
                                                    Positioned(
                                                        top: 0,
                                                        left: 0,
                                                        child: InkWell(
                                                          onTap: (){
                                                            Navigator.pop(context);
                                                          },
                                                          child: SvgPicture.asset(
                                                              'assets/arrowleft.svg',
                                                              semanticsLabel: 'vector',
                                                            color: Colors.white,
                                                            height: 20,
                                                            width: 20,
                                                          ),
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
                        Positioned(
                            top: 600,
                            left: 31,
                            child: Container(
                                width: 300,
                                height: 70,

                                child: Stack(
                                    children: <Widget>[
                                      Container(
                                        height: 300,
                                        width: 400,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(10)
                                        ),
                                        child: Row(
                                          children: [
                                            SizedBox(width: 15,),

                                            GestureDetector(
                                              onTap: (){
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => Mainui()));
                                              },
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
                                                                semanticsLabel: 'vector',
                                                              height: 20,
                                                              width: 20,
                                                            ),
                                                        ),Positioned(
                                                            top: 28,
                                                            left: 0,
                                                            child: Text('Home', textAlign: TextAlign.left, style: TextStyle(
                                                                color: Colors.black,
                                                                fontFamily: 'Montserrat',
                                                                fontSize: 12,
                                                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                                fontWeight: FontWeight.normal,
                                                                height: 1
                                                            ),)
                                                        ),
                                                      ]
                                                  )
                                              ),
                                            ),
                                            SizedBox(width: 10,),
                                            GestureDetector(
                                              onTap: (){
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => History1()));
                                              },
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
                                                                              color: Colors.black,
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
                                              ),
                                            ),
                                            SizedBox(width: 10,),
                                            InkWell(
                                              onTap: (){
                                                Navigator.push(context, MaterialPageRoute(builder: (context)=>History2()));
                                              },
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
                                                                          child: Text(' History', textAlign: TextAlign.left, style: TextStyle(
                                                                              color: Colors.black,
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
                                                            'assets/search.svg',
                                                            semanticsLabel: 'vector',
                                                            height: 20,
                                                            width: 20,
                                                          ),
                                                        ),
                                                      ]
                                                  )
                                              ),
                                            ),
                                            SizedBox(width: 10,),
                                            GestureDetector(
                                              onTap: (){
                                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Withdraw1()));
                                              },
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
                                                                          child: Text(' Withdraw', textAlign: TextAlign.left, style: TextStyle(
                                                                              color: Colors.black,
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
                                                            'assets/atm.svg',
                                                            semanticsLabel: 'vector',
                                                            height: 20,
                                                            width: 20,
                                                          ),
                                                        ),
                                                      ]
                                                  )
                                              ),
                                            ),

                                          ],
                                        ),
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
