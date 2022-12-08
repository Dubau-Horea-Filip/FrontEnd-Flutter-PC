// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 104, 26, 26),
          title: Text("Profile"),
        ),
        backgroundColor: const Color.fromARGB(255, 49, 49, 49),
        body: Center(
          child: CircleAvatar(
            radius: 100,
            child: Text("profile"),
          ),
        ));
  }
}
