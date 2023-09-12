import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 1, 19, 49),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 4, 27, 66),
        title: const Text(
          "Notifications",
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Regular",
          ),
        ),
      ),
      body: const Center(
        child: Text(
          "Empty",
          style: TextStyle(
            fontFamily: "Regular",
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
