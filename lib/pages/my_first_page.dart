import 'package:flutter/material.dart';

class MyFirstPage extends StatelessWidget {
 const MyFirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar aplication", style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),),
        backgroundColor: const Color.fromARGB(255, 255, 0, 0),
      ),

      body: Center(
        child: Text("Texto Centralizado"),
      ),
    );
  }
}