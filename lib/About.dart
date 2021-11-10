import 'package:flutter/material.dart';
import 'package:starboyexchange/account1.dart';
import 'package:dio/dio.dart';

 class Cats {
   late String name;
    late String pics;



 }

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {

  Future getApi() async{
    final Resp = await Dio().get( 'https://api.thecatapi.com/v1/images/search');
    print((Resp.data.toString()));
    var idahun = Resp.data;
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: green,
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: (){
                    getApi();
                  },
                  child: Text(
                    "We simply buy and sell giftcards\n with a background buy and sell of digital currencies\n(pending federal government release of e-naira)",style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Montserrat",
                  ),

                  ),

                ),
              ),


            ],
          ),
        ),

      ),
    );
  }
}
