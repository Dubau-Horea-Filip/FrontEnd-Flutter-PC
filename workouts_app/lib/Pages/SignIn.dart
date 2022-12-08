import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:workouts_app/passParam.dart';

class SignINPage extends StatefulWidget {
  const SignINPage({super.key});

  @override
  State<SignINPage> createState() => _SignINPageState();
}

class _SignINPageState extends State<SignINPage> {
  late TextEditingController controllerName;
  late TextEditingController controllerPassword;
  late TextEditingController controllerPassword2;

  @override
  void initState() {
    controllerName = TextEditingController();
    controllerPassword = TextEditingController();
    controllerPassword2 = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 104, 26, 26),
        title: Text("sign in"),
      ),
      backgroundColor: const Color.fromARGB(255, 49, 49, 49),
      body: Center(
        child: ListView(
          children: [
            TextBox(controllerName, "Name"),
            TextBox(controllerPassword, "password"),
            TextBox(controllerPassword2, "password2"),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ElevatedButton(
                  onPressed: () {
                    String name = controllerName.text;
                    String pass = controllerPassword.text;
                    String pass2 = controllerPassword2.text;
                    if (name.isNotEmpty && pass.isNotEmpty) {
                      if (pass == pass2) {
                        signin(context, name, pass);
                      } else {
                        showDialog(
                            context: context,
                            builder: (_) => const AlertDialog(
                                  //title: Text("opa"),
                                  content: Text("Password Should match"),
                                ));
                      }
                    } else {
                      showDialog(
                          context: context,
                          builder: (_) => const AlertDialog(
                                //title: Text("opa"),
                                content: Text("All filds shoud be filled"),
                              ));
                    }
                  },
                  child: const Text("create account")),
            )
          ],
        ),
      ),
    );
  }

  signin(BuildContext context, n, p) {
    //Navigator.pop(context);

    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              //title: Text("opa"),
              content: Text("Account Created"),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("ok", style: TextStyle(color: Colors.red)))
              ],
            ));
  

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
