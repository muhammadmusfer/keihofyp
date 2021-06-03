import 'package:flutter/material.dart';
import 'package:keiho/DetailsScreen.dart';
import 'package:keiho/HomePage.dart';
import 'Constant.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: kAppTheme,
      home: DetailScreen(),
    );
  }
}
