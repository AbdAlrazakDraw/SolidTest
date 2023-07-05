import 'package:flutter/material.dart';

import 'package:solid_test/Home/home_page.dart';

void main() {
  runApp(const Main());
}

///MaterialApp
class Main extends StatelessWidget {
  ///Main parameters
  const Main({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
 }
