// ignore_for_file: file_names
import 'package:flutter/material.dart';

messageResponse(BuildContext context, String name) {
  showDialog(
      context: context,
      builder: (_) => AlertDialog(
            //title: Text("opa"),
            content: Text('alo$name'),
          ));
}
