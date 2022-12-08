// ignore_for_file: non_constant_identifier_names

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class SimpleTextBox extends StatefulWidget {
  final String value;

  const SimpleTextBox({Key? key, required this.value}) : super(key: key);

  @override
  State<SimpleTextBox> createState() => _SimpleTextBoxState();
}

class _SimpleTextBoxState extends State<SimpleTextBox> {
  
  // ignore: constant_identifier_names
  static const TextStyle stats_text_style_leftside = TextStyle(
      color: Colors.white, fontWeight: FontWeight.normal, fontSize: 20);
  static const TextStyle stats_text_style_rightside = TextStyle(
      color: Colors.white, fontWeight: FontWeight.normal, fontSize: 20);

  static const double left_padding = 15;
  static const double right_padding = 20;
  static const double bottom_padding = 20;
  static const double top_padding = 10;

  Padding name = const Padding(
      padding: EdgeInsets.only(
          left: left_padding,
          bottom: bottom_padding,
          right: right_padding,
          top: top_padding), //apply padding to some sides only
      child: Text("widget.value"));

  Padding workout_date = const Padding(
      padding: EdgeInsets.only(
          //left: left_padding,
          //bottom: bottom_padding,
          //right: right_padding,
          //top: top_padding
          ), //apply padding to some sides only
      child: Text("Monday", style: stats_text_style_rightside));

  @override
  Widget build(BuildContext context) {
    return Container(
        // width: MediaQuery.of(context).size.width * 0.90,
        // height: MediaQuery.of(context).size.height * 0.5,
        margin: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 0.10,
          right: MediaQuery.of(context).size.width * 0.10,
          //top: MediaQuery.of(context).size.height * 0.10,
          //bottom: MediaQuery.of(context).size.height * 0.10
        ),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 104, 26, 26),
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 8.0,
              spreadRadius: 1.0,
              offset: Offset(1.0, 0.0),
            ),
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6.0,
              spreadRadius: 1.5,
              offset: Offset(1.0, 0.0),
            ),
          ],
        ),
        child: name);
  }
}
