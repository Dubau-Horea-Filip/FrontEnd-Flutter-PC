// ignore_for_file: camel_case_types, file_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class addWorkoutsPage extends StatefulWidget {
  const addWorkoutsPage({super.key});

  @override
  State<addWorkoutsPage> createState() => _addWorkoutsPageState();
}

class _addWorkoutsPageState extends State<addWorkoutsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Workout"),
        actions: const [
          CircleAvatar(
            child: Text("profile"),
          ),
        ],

        // leading: new Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: CircleAvatar(
        //     child: Text("profile"),
        //   ),
        //
        // )
      ),
    );
  }
}
