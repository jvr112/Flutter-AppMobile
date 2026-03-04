import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/my_first_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JvApp',
      theme: ThemeData(

        colorScheme: .fromSeed(seedColor: const Color.fromRGBO(255, 0, 0, 1)),
      ),
      home: MyFirstPage(),
    );
  }
}