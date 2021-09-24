import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:readmore/readmore.dart';
import 'package:starboyexchange/account1.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class Notifications extends StatefulWidget {
  const Notifications({Key ?key}) : super(key: key);

  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: green,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [

                SizedBox(
                  height: 50,
                ),

                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Container(
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
                                                child: Icon(Icons.menu,color: Colors.white,),
                                            ),
                                          ]
                                      )
                                  )
                              ),
                            ]
                        )
                    ),
                    SizedBox(
                     width: 90,
                    ),

                    Text("Notifications",style: TextStyle(
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),),
                  ],
                ),

                SizedBox(
                  height: 50,
                ),

                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ReadMoreText(
              'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',style: TextStyle(
                    fontFamily: "Montserrat",
                    color: Colors.white,
                  ),
              trimLines: 2,
              colorClickableText: Colors.pink,
              trimMode: TrimMode.Line,
              trimCollapsedText: 'Read more',
              trimExpandedText: 'Show less',
              moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ReadMoreText(
                    'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',style: TextStyle(
                    fontFamily: "Montserrat",
                    color: Colors.white,
                  ),
                    trimLines: 2,
                    colorClickableText: Colors.pink,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Read more',
                    trimExpandedText: 'Show less',
                    moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ReadMoreText(
                    'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',style: TextStyle(
                    fontFamily: "Montserrat",
                    color: Colors.white,
                  ),
                    trimLines: 2,
                    colorClickableText: Colors.pink,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Read more',
                    trimExpandedText: 'Show less',
                    moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ReadMoreText(
                    'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',style: TextStyle(
                    fontFamily: "Montserrat",
                    color: Colors.white,
                  ),
                    trimLines: 2,
                    colorClickableText: Colors.pink,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Read more',
                    trimExpandedText: 'Show less',
                    moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ReadMoreText(
                    'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',style: TextStyle(
                    fontFamily: "Montserrat",
                    color: Colors.white,
                  ),
                    trimLines: 2,
                    colorClickableText: Colors.pink,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Read more',
                    trimExpandedText: 'Show less',
                    moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ReadMoreText(
                    'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',style: TextStyle(
                    fontFamily: "Montserrat",
                    color: Colors.white,
                  ),
                    trimLines: 2,
                    colorClickableText: Colors.pink,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Read more',
                    trimExpandedText: 'Show less',
                    moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ReadMoreText(
                    'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',style: TextStyle(
                    fontFamily: "Montserrat",
                    color: Colors.white,
                  ),
                    trimLines: 2,
                    colorClickableText: Colors.pink,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Read more',
                    trimExpandedText: 'Show less',
                    moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),

                  ),
                ),

              ],
            ),
          ),
        )
      ),
    );
  }
}
