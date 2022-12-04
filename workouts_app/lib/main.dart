import 'package:flutter/material.dart';

import 'homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(title: 'Login Page'),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late TextEditingController controllerName;
  late TextEditingController controllerPassword;

  @override
  void initState() {
    controllerName = TextEditingController();
    controllerPassword = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 104, 26, 26),
        title: Text(widget.title),
      ),
      backgroundColor: const Color.fromARGB(255, 49, 49, 49),
      body: Center(
        child: ListView(
          children: [
            TextBox(controllerName, "Name"),
            TextBox(controllerPassword, "password"),
            ElevatedButton(
                onPressed: () {
                  String name = controllerName.text;
                  String pass = controllerPassword.text;
                  if (name.isNotEmpty &&
                      pass.isNotEmpty &&
                      checkCredentials(name, pass)) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => MyHomePage("Main Page")));
                  } else {
                    showDialog(
                        context: context,
                        builder: (_) => const AlertDialog(
                              //title: Text("opa"),
                              content: Text("All filds shoud be filled"),
                            ));
                  }
                },
                child: const Text("Login"))
          ],
        ),
      ),
    );
  }

  bool checkCredentials(name, pass) {
    if (name == "filip" && pass == "1234") {
      return true;
    }
    return false;
  }

  login(name, pass) {}
}

class TextBox extends StatelessWidget {
  final String label;
  final TextEditingController controller;

  const TextBox(this.controller, this.label, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            filled: true,
            labelText: label,
            suffix: GestureDetector(
              child: const Icon(Icons.close),
              onTap: () {
                controller.clear();
              },
            )),
      ),
    );
  }
}
