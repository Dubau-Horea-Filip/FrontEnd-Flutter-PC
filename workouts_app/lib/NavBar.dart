// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'Pages/addWorkoutPage.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text('Workouts_App'),
            accountEmail: Text('username'),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 104, 26, 26),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.today),
            title: const Text('Workout Plans'),
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const addWorkoutsPage()))
            },
          ),
          ListTile(
            leading: const Icon(Icons.timeline),
            title: const Text('Statistics'),
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const addWorkoutsPage()))
            },
          ),
          ListTile(
            leading: const Icon(Icons.security),
            title: const Text('Security'),
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const addWorkoutsPage()))
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Logout'),
            leading: const Icon(Icons.exit_to_app),
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const addWorkoutsPage()))
            },
          ),
        ],
      ),
    );
  }
}
