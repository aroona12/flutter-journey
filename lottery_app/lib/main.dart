import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black38,
          title: const Center(
              child: Text(
            'Lottery App',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          )),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(child: Text('Your Winning Number is 6')),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                height: x == 6 ? 250 : 400,
                width: 300,
                decoration: BoxDecoration(
                  color: x == 6 ? Colors.black38 : Colors.teal.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(23.0),
                  child: x == 6
                      ? Column(
                          children: [
                            const Icon(
                              Icons.done_all,
                              color: Colors.green,
                              size: 30,
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Text(
                              'Congratulations you win the lottery\n your Lottery number is $x ',
                              textAlign: TextAlign.center,
                            )
                          ],
                        )
                      : Column(
                          children: [
                            const Icon(
                              Icons.error,
                              color: Colors.red,
                              size: 30,
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Text(
                              'Better Luck Next time Your number is $x\nTry Again',
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            x = random.nextInt(10);
            print(x);
            setState(() {});
          },
          child: const Icon(
            Icons.refresh,
          ),
        ),
      ),
    );
  }
}
