// ignore_for_file: file_names, non_constant_identifier_names, avoid_types_as_parameter_names
import 'package:flutter/material.dart';
//import 'package:workouts_app/Pages/Profile.dart';
import 'package:workouts_app/Pages/addWorkoutPage.dart';
import 'package:workouts_app/passParam.dart';
import 'package:workouts_app/simple_workout_widget.dart';
import 'package:workouts_app/stat_widget.dart';
import 'package:workouts_app/workout.dart';
import '../NavBar.dart';
import '../messageResponse.dart';
import 'Profile-R.dart';

class MyHomePage extends StatefulWidget {
  final String _title;
  const MyHomePage(this._title, {super.key});

  @override
  State<StatefulWidget> createState() => _MyhomePage();
}

class _MyhomePage extends State<MyHomePage> {
  List<Workout> works = [
    Workout("1", "arms", "easy"),
    Workout("2", "chest", "hard"),
    Workout("3", "legs", "medium"),
    Workout("4", "abs", "easy"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 104, 26, 26),
        title: Text(widget._title),
        //   actions: const [
        //   CircleAvatar(
        //     radius: 25,
        //     child: Text("profile"),
        //   ),
        // ],
        actions: [
          IconButton(
            splashRadius: 25,
            icon: const CircleAvatar(
              minRadius: 25,
              // foregroundImage: Image.asset(
              //   'assets/Krunal.jpg',
              // ),
              // backgroundImage: Image.asset('assets/profile.png'),
              child: Text("profile"),
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const Profile()));
            },
          ),
        ],
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
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 104, 26, 26),
        onPressed: () {
          Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const addWorkoutsPage()))
              .then((Object) {
            if (Object != null) {
              setState(() {
                works.add(Object);
                messageResponse(context, Object.name + " was added");
              });
            }
          });
        },
        tooltip: "add",
        child: const Icon(Icons.add),
      ),
    );
  }

  removeObject(BuildContext context, var index, var name) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              title:
                  const Text("are you sure you want to delete this workout?"),
              content: Text("The workout $name will be eliminated"),
              actions: [
                TextButton(
                    onPressed: () {
                      setState(() {
                        works.removeAt(index);
                        Navigator.pop(context);
                      });
                    },
                    child: const Text("Eliminate",
                        style: TextStyle(color: Colors.red))),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Cancel",
                        style: TextStyle(color: Colors.blue)))
              ],
            ));
  }

  empty() {}
}
