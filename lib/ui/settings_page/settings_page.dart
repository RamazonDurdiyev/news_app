import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 1, 19, 49),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 4, 27, 66),
        title: const Text(
          "Settings",
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Regular",
          ),
        ),
      ),
    );
  }
}
