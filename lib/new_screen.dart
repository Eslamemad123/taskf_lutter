import 'package:flutter/material.dart';

class NewScreen extends StatelessWidget {
  NewScreen({super.key, required this.name});
  String name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/image/image.png'),
            ),
            SizedBox(height: 80),
            Text(
              textAlign: TextAlign.center,
              'Hi, I am\n ${name}\n,CreativeTechnologist',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 50),

            Text(
              textAlign: TextAlign.center,

              'Amet minim mollit non deserunt ullamco estsit aliqua dolor do amet Sint. Velit officiaconsequat duis enim velit mollit. Exercitationveniam consequat sunt nostrud amet.',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
