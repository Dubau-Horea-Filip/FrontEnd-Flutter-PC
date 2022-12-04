import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pc/workout.dart';

import 'messageResponse.dart';

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
      appBar: AppBar(
        title: Text(widget._title),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print("Search Pressed");
            },
          ),
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
      body: ListView.builder(
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => empty()))
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
        child: Icon(Icons.add),
      ),
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
