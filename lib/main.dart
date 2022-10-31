import 'package:flutter/material.dart';
import 'package:co.Weather/screens/loading_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      
      home: LoadingScreen(),
    );
  }
}
