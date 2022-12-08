// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:workouts_app/simple_workout_widget.dart';

class addWorkoutsPage extends StatefulWidget {
  const addWorkoutsPage({super.key});

  @override
  State<addWorkoutsPage> createState() => _addWorkoutsPageState();
}

class _addWorkoutsPageState extends State<addWorkoutsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 49, 49, 49),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 104, 26, 26),
          title: const Text("Add Workout"),
          actions: const [
            CircleAvatar(
              child: Text("profile"),
            ),
          ],
        ),
        body: Column(
          children: [
            Text("Arms"),
            Row(
              children: [s_widget(1), s_widget(2), s_widget(5)],
            ),
            Text("Chest"),
            Row(
              children: [s_widget(1), s_widget(2), s_widget(5)],
            ),
          ],
        ));
  }
}
