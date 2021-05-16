import 'package:flutter/material.dart';
import 'package:testing/HomeScreen.dart';
import 'package:testing/LoginScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       home: LoginScreen(),
     );
  }


}


