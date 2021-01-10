import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';

import 'BMIScreen.dart';

void main() {
  
  runApp(Phoenix(child: MyApp()));

}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: AppBarTheme(
          color: Color(0xFF00416a),
        ),

      ),
      home: BMIScreen(title: 'BMI CALCULATOR'),
    );
  }
}



