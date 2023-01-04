import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../passParam.dart';
import '../simple_workout_widget.dart';
import '../stat_widget.dart';

class StatisticPage extends StatefulWidget {
  const StatisticPage({super.key});

  @override
  State<StatisticPage> createState() => _StatisticPageState();
}

class _StatisticPageState extends State<StatisticPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 104, 26, 26),
        title: const Text("sign in"),
      ),
      backgroundColor: const Color.fromARGB(255, 49, 49, 49),
      body: Column(
        children: [
          const Pass(
            value: 'Today',
          ),
          stat_widget(),
          const Pass(value: "Comming Next"),
          Row(
            children: [
              s_widget(1), // s_widget get the id of the workout
              s_widget(2),
              s_widget(2),
            ],
          )
        ],
      ),
    );
  }
}
