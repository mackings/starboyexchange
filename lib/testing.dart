import 'package:flutter/material.dart';
import 'package:starboyexchange/account1.dart';

class Testing extends StatefulWidget {
  const Testing({Key? key}) : super(key: key);

  @override
  _TestingState createState() => _TestingState();
}

class _TestingState extends State<Testing> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            SizedBox(
              height: 300,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('Select Currency', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'Montserrat',
                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.bold,
                      height: 1
                  ),),
                ),
                SizedBox(width: 20,),
                Text('Select Currency', textAlign: TextAlign.left, style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Montserrat',
                    fontSize: 18,
                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.bold,
                    height: 1
                ),),
              ],
            ),

            Positioned(
              top: 24,
              left: 10,
              child: Center(
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
                        //expanded
                        Center(
                          child: DropdownButton<String>(
                            items: <String>['Amazon', 'Walmart', 'WellsFargo', 'Steam'].map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value,style: TextStyle(color: Colors.black),),
                              );
                            }).toList(),
                            onChanged: (_) {},
                          ),
                        )

                      ]
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
