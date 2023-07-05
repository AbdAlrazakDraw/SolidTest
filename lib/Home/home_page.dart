import 'dart:math';

import 'package:flutter/material.dart';
import 'package:solid_test/Constants/theme_constant.dart';

///Start App from this screen
class HomePage extends StatefulWidget {
  ///HomePage parameters
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _random = Random();

  Color generateRandomBgColor() {
    final randomColor = Color.fromARGB(
      _random.nextInt(256),
      _random.nextInt(256),
      _random.nextInt(256),
      _random.nextInt(256),
    );

    return randomColor;
  }

  Color generateRandomTextColor() {
    final randomTextColor = Colors.primaries
    [_random.nextInt(Colors.primaries.length)][_random.nextInt(9) * 100];

    return randomTextColor ?? generateRandomBgColor();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test", style: ThemeConstant().boldFont),
        centerTitle: true,
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            generateRandomBgColor();
            generateRandomTextColor();
          });
        },
        child: Container(
          color: generateRandomBgColor(),
          alignment: Alignment.center,
          child: Text(
            "Hello there",
            style: ThemeConstant().semiBoldFont.copyWith(
                  color: generateRandomTextColor(),
                ),
          ),
        ),
      ),
    );
  }
}
