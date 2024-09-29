import 'package:flutter/material.dart';
import 'package:navigation_drawer_practice/screen_1.dart';
import 'package:navigation_drawer_practice/screen_2.dart';
import 'package:navigation_drawer_practice/screen_3.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
       initialRoute: Screen1.id,
        routes: {
          Screen1.id : (context) => Screen1(),
          Screen2.id : (context) => Screen2(),
          Screen3.id : (context) => Screen3(),
        },
      ),
    );
  }
}

