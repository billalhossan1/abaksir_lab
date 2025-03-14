import 'package:flutter/material.dart';
import 'home/screens/home_screen.dart';

void main() {
  runApp(const MyWeb());
}
class MyWeb extends StatelessWidget {
  const MyWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}


