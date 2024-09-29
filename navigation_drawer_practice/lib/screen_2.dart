import 'package:flutter/material.dart';
import 'package:navigation_drawer_practice/screen_3.dart';

class Screen2 extends StatefulWidget {
  static const String id = 'screen_2';
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 2'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, Screen3.id);
                },
                child: Text('Screen2'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
