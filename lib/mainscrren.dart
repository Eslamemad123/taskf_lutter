import 'package:flutter/material.dart';
import 'package:taskf_lutter/new_screen.dart';

class mainscrren extends StatelessWidget {
  const mainscrren({super.key, required this.NameController});

  final TextEditingController? NameController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Enter Your Name !',
                style: TextStyle(
                  color: Colors.lightBlue,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: NameController,

                decoration: InputDecoration(
                  label: Text('Name'),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 230, 227, 227),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Icon(Icons.person, color: Colors.blue),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () {
                  if (NameController!.text.isNotEmpty) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            NewScreen(name: NameController!.text),
                      ),
                    );
                  }
                },
                child: Text(
                  'Go to Second Scrren --> ',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
