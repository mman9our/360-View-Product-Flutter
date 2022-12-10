import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sentiment_analysis/sentiment_analysis.dart';
import 'ar.dart';
import 'home.dart';
import 'recommendation_system.dart';

void main() {
  runApp(const MainScreen());
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final items = const [
    Icon(Icons.home, color: Color.fromARGB(0xFF, 49, 168, 255)),
    Icon(Icons.textsms, color: Color.fromARGB(0xFF, 49, 168, 255)),
    Icon(Icons.phone_iphone, color: Color.fromARGB(0xFF, 49, 168, 255)),
    Icon(Icons.view_comfy, color: Color.fromARGB(0xFF, 49, 168, 255)),
  ];

  int index = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Shoppy App",
      home: Scaffold(
        backgroundColor: Color.fromARGB(0xFF, 230, 230, 240),
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Color.fromARGB(0xFF, 230, 230, 240),
          color: Color.fromARGB(0xFF, 43, 45, 57),
          items: items,
          index: index,
          onTap: (SelectedIndex) {
            setState(() {
              index = SelectedIndex;
            });
          },
        ),
        appBar: AppBar(
          title: Text("Shoppy App"),
          centerTitle: true,
          backgroundColor: Color.fromARGB(0xFF, 43, 45, 57),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))
          ],
        ),
        body: Container(
          child: getSelectedWidget(index: index),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }

  Widget getSelectedWidget({required int index}) {
    Widget widget;
    switch (index) {
      case 0:
        widget = const HomePageScreen();
        break;
      case 1:
        widget = const SentimentAnalysisScreen();
        break;
      case 2:
        widget = const ArPageScreen();
        break;
      case 3:
        widget = const RecommendationSystemScreen();
        break;
      default:
        widget = const HomePageScreen();
    }
    return widget;
  }
}
