// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class stat_widget extends StatelessWidget {
  stat_widget({Key? key}) : super(key: key);

  // ignore: constant_identifier_names
  static const TextStyle stats_text_style_leftside = TextStyle(
      color: Colors.white, fontWeight: FontWeight.normal, fontSize: 20);
  static const TextStyle stats_text_style_rightside =
      TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25);

  static const double left_padding = 15;
  static const double right_padding = 20;
  static const double bottom_padding = 20;
  static const double top_padding = 10;

  static const Padding progress_text = Padding(
      padding: EdgeInsets.only(
          left: left_padding,
          bottom: bottom_padding,
          right: right_padding,
          top: top_padding), //apply padding to some sides only
      child: Text("in progress", style: stats_text_style_leftside));

  Row progress = Row(
      children: const [Icon(Icons.circle, color: Colors.green), progress_text]);

  Padding workout_name = const Padding(
      padding: EdgeInsets.only(
          left: left_padding,
          bottom: bottom_padding,
          right: right_padding,
          top: top_padding), //apply padding to some sides only
      child: Text("Workout 1", style: stats_text_style_leftside));

  Padding workouts_completed_label = const Padding(
      padding: EdgeInsets.only(
          left: left_padding,
          bottom: bottom_padding,
          right: right_padding,
          top: top_padding), //apply padding to some sides only
      child: Text("Workouts Completed", style: stats_text_style_leftside));

  Padding workouts_completed = const Padding(
      padding: EdgeInsets.only(
          left: left_padding,
          bottom: bottom_padding,
          right: right_padding,
          top: top_padding), //apply padding to some sides only
      child: Text("7", style: stats_text_style_rightside));

  Padding days_remaining_label = const Padding(
      padding: EdgeInsets.only(
          left: left_padding,
          bottom: bottom_padding,
          right: right_padding,
          top: top_padding), //apply padding to some sides only
      child: Text("Days Remaining", style: stats_text_style_leftside));

  Padding days_remaining = const Padding(
      padding: EdgeInsets.only(
          left: left_padding,
          bottom: bottom_padding,
          right: right_padding,
          top: top_padding), //apply padding to some sides only
      child: Text("12", style: stats_text_style_rightside));

  Padding calories_burnt_label = const Padding(
      padding: EdgeInsets.only(
          left: left_padding,
          bottom: bottom_padding,
          right: right_padding,
          top: top_padding), //apply padding to some sides only
      child: Text("Calories Burnt", style: stats_text_style_leftside));

  Padding calories_burnt = const Padding(
      padding: EdgeInsets.only(
          left: left_padding,
          bottom: bottom_padding,
          right: right_padding,
          top: top_padding), //apply padding to some sides only
      child: Text("1120", style: stats_text_style_rightside));

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.90,
        height: MediaQuery.of(context).size.height * 0.5,
        margin: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.10,
            right: MediaQuery.of(context).size.width * 0.10,
            top: 10, // MediaQuery.of(context).size.height * 0.10,
            bottom: 10), //MediaQuery.of(context).size.height * 0.10),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [workout_name, progress],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [workouts_completed_label, workouts_completed],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [calories_burnt_label, calories_burnt],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [days_remaining_label, days_remaining],
            ),
            const LinearProgressIndicator(
              value: 0.7,
              semanticsLabel: 'Linear progress indicator',
              backgroundColor: Colors.white,
            ),
          ],
        ));
  }
}
