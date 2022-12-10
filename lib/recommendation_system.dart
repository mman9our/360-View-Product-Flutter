import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RecommendationSystemScreen extends StatefulWidget {
  const RecommendationSystemScreen({super.key});

  @override
  State<RecommendationSystemScreen> createState() =>
      _RecommendationSystemScreen();
}

class _RecommendationSystemScreen extends State<RecommendationSystemScreen> {
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
