import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:starboyexchange/account1.dart';
import 'dart:math' as math;
import 'package:dropdown_search/dropdown_search.dart';


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
        backgroundColor: green,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               DropdownSearch<String>(
                mode: Mode.MENU,
                popupBackgroundColor: green,
                popupBarrierColor: green,
                items: ["Brazil", "Italia (Disabled)", "Tunisia", 'Canada'],
                label: "Menu mode",
                hint: "country in menu mode",
                popupItemDisabled: (String s) => s.startsWith('I'),

               ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
