import 'package:flutter/material.dart';
import 'package:taskf_lutter/firstScreen.dart';

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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  textAlign: TextAlign.center,
                  ' I am',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(
                  textAlign: TextAlign.center,
                  ' ${name}',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),

            Text(
              textAlign: TextAlign.center,

              'Student at the Faculty of Computers and Artificial Intelligence, Benha University',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
SizedBox(height: 40,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(2),
                ),
              ),
              onPressed: () {},
              child: Text(
                'Download Resume',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
