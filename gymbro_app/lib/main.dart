import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(GymBroApp());
}

class GymBroApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GymBro',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}