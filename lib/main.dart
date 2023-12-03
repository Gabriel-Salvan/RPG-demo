import 'package:flutter/material.dart';

import 'package:rpgdemo/app/UI/initialScreen.dart';

const Color darkBlue = Color.fromARGB(255, 0, 52, 89);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: darkBlue,
      ),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: Center(
          child: MyApp(),
        ),
      ),
    );
  }
}
