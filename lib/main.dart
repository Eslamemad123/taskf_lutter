import 'package:flutter/material.dart';
import 'package:taskf_lutter/firstScreen.dart';
import 'package:taskf_lutter/secondScreen.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: mainscrren(),
    );
  }
}
