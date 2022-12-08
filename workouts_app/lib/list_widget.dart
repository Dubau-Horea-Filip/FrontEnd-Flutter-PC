import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:workouts_app/workout.dart';

import 'messageResponse.dart';

class list_widget extends StatefulWidget {
  const list_widget({super.key});

  @override
  State<list_widget> createState() => _list_widgetState();
}

class _list_widgetState extends State<list_widget> {
  List<Workout> works = [
    Workout("1", "arms", "easy"),
    Workout("2", "chest", "hard"),
    Workout("3", "legs", "medium"),
    Workout("4", "abs", "easy"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: 
      
      ListView.builder(
          itemCount: works.length,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                Navigator.push(
                        context, MaterialPageRoute(builder: (_) => empty()))
                    .then((newObject) {
                  if (newObject != null) {
                    setState(() {
                      works.removeAt(index);
                      works.insert(index, newObject);
                      messageResponse(context, newObject.name + " was updated");
                    });
                  }
                });
              },
              onLongPress: () {
                removeObject(context, index, works[index].name);
              },
              title: Text(works[index].name),
              subtitle: Text(
                  works[index].description + "\n" + works[index].id.toString()),
              leading: CircleAvatar(
                child: Text(works[index].name.substring(0, 1)),
              ),
              trailing: const Icon(
                Icons.info,
                color: Colors.blue,
              ),
            );
          }),
    );
  }

  removeObject(BuildContext context, var index, var name) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              title: Text("are you sure you want to delete this workout?"),
              content: Text("The workout " + name + " will be eliminated"),
              actions: [
                TextButton(
                    onPressed: () {
                      setState(() {
                        this.works.removeAt(index);
                        Navigator.pop(context);
                      });
                    },
                    child:
                        Text("Eliminate", style: TextStyle(color: Colors.red))),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Cancel", style: TextStyle(color: Colors.blue)))
              ],
            ));
  }

  empty() {}
}
