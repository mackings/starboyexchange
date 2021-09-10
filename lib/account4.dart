import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:starboyexchange/account1.dart';
import 'dart:math' as math;

class Account4 extends StatefulWidget {
  const Account4({Key ?key}) : super(key: key);

  @override
  _Account4State createState() => _Account4State();
}

class _Account4State extends State<Account4> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: green,
        body: Center(
          child: Column(
            children: [
              Image.asset("assets/gift.png"),
              //starboy
              Container(
                width: 116,
                height: 74,

                child: Stack(
                    children: <Widget>[
                      Positioned(
                        top: 34.04002380371094,
                        left: 2.2737367544323206e-13,
                        child: Transform.rotate(
                          angle: 1.444701727598654e-16 * (math.pi / 180),
                          child: Text('Xchange', textAlign: TextAlign.left, style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'Montserrat',
                              fontSize: 30,
                              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.bold,
                              height: 1
                          ),),
                        ),
                      ),Positioned(
                          top: -2.2737367544323206e-13,
                          left: 5.2727131843566895,
                          child: Transform.rotate(
                            angle: 3.1347894642296156e-16 * (math.pi / 180),
                            child: Text('StarBoy', textAlign: TextAlign.left, style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontFamily: 'Montserrat',
                                fontSize: 30,
                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.bold,
                                height: 1
                            ),),
                          )
                      ),

                    ]
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
