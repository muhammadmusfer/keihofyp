import 'package:flutter/material.dart';
import 'package:keiho/DetailsScreen.dart';
import 'package:keiho/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF455A64),
        primaryColor: Color(0xFF263238),
        backgroundColor: Color(0xFF2980B9),
      ),
      home: HomePage(),
    );
  }
}
