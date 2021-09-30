import 'package:flutter/material.dart';
import 'package:starboyexchange/introsliders.dart';
import 'package:readmore/readmore.dart';
import 'package:url_launcher/url_launcher.dart';

class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {

  var news1 = ("https://www.coindesk.com/business/2021/09/29/crypto-exchange-coinjar-secures-uk-fca-registration-advocates-for-license-in-australia/");
  var news2 = ("https://pub.dev/packages/skeleton_loader/");

  void Readnews() async =>
      await canLaunch(news1) ? await launch(news1) : throw 'Could not launch $news1';
  Future Readnews2() async =>
      await canLaunch(news2) ? await launch(news2) : throw 'Could not launch $news2';


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: green,
        body: Center(
          child: Column(

            children: [
              SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: InkWell(
                  onTap: (){
                    Readnews();
                  },
                  child: ReadMoreText(
                    'Crypto Exchange CoinJar Secures UK FCA Registration, Advocates For License in Australia\nCoinJar UK joins a growing list of 10 other registered “cryptoasset firms,” including Gemini Europe Ltd.',style: TextStyle(
                    fontFamily: "Montserrat",
                    color: Colors.white,

                  ),
                    trimLines: 2,
                    colorClickableText: Colors.pink,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Read more',
                    trimExpandedText: 'Show less',
                    moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,),

                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: InkWell(
                  onTap: (){
                    Readnews();
                  },
                  child: ReadMoreText(
                    'Crypto Exchange CoinJar Secures UK FCA Registration, Advocates For License in Australia\nCoinJar UK joins a growing list of 10 other registered “cryptoasset firms,” including Gemini Europe Ltd.',style: TextStyle(
                    fontFamily: "Montserrat",
                    color: Colors.white,

                  ),
                    trimLines: 2,
                    colorClickableText: Colors.pink,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Read more',
                    trimExpandedText: 'Show less',
                    moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,),

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
