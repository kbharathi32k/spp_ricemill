import 'package:flutter/material.dart';

class NoOfLoad extends StatelessWidget {
  const NoOfLoad({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Incoming"),
        backgroundColor: Colors.green,
      ),
      body: const Center(
        child: Text(
          "Ithu Next Page ma!",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
