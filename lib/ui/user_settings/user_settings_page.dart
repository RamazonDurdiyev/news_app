import 'package:flutter/material.dart';

class UserSettingsPage extends StatelessWidget {
  const UserSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 1, 19, 49),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 4, 27, 66),
        title: const Text(
          "My info",
          style: TextStyle(
            fontFamily: "Regular",
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
