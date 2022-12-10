import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ArPageScreen extends StatefulWidget {
  const ArPageScreen({super.key});

  @override
  State<ArPageScreen> createState() => _ArPageScreen();
}

class _ArPageScreen extends State<ArPageScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(0xFF, 230, 230, 240),
        body: Center(
          child: Text(
            "Comming Soon",
            style: TextStyle(
                fontSize: 30, color: Color.fromARGB(0xFF, 43, 45, 57)),
          ),
        ),
      ),
    );
  }
}
