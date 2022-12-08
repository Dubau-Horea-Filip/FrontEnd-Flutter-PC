import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Pass extends StatefulWidget {
  final String value;
  const Pass({super.key, required this.value});

  @override
  State<Pass> createState() => _PassState();
}

class _PassState extends State<Pass> {
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
          color: Color.fromARGB(255, 124, 11, 11),
          borderRadius: BorderRadius.circular(2.0),
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
        child: Text(widget.value));
  }
}
