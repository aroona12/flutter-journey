import 'package:calculator/components/my_Button.dart';
import 'package:calculator/constant.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

var userinput = '';
var output = '';

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Expanded(
          child: Column(

            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 80),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        userinput.toString(),
                        style: const TextStyle(color: Colors.black, fontSize: 35),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        output.toString(),
                        style: const TextStyle(color: Colors.black, fontSize: 35),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Row(
                      children: [
                        MyButton(
                          button: 'AC',
                          color: const Color(0xffa5a5a5),
                          onPress: () {
                            userinput = '';
                            output = '';
                            setState(() {

                            });
                          },
                        ),
                        MyButton(
                          button: '+/-',
                          color: const Color(0xffa5a5a5),
                          onPress: () {
                            userinput += '+/-';
                            setState(() {

                            });
                          },
                        ),
                        MyButton(
                          button: '%',
                          color: const Color(0xffa5a5a5),
                          onPress: () {
                            userinput += '%';
                            setState(() {

                            });
                          },
                        ),
                        MyButton(
                          button: '/',
                          color: const Color(0xffa5a5a5),
                          onPress: () {
                            userinput += '/';
                            setState(() {

                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          button: '7',
                          onPress: () {
                            userinput += '7';
                            setState(() {

                            });
                          },
                        ),
                        MyButton(
                          button: '8',
                          onPress: () {
                            userinput += '8';
                            setState(() {

                            });
                          },
                        ),
                        MyButton(
                          button: '9',
                          onPress: () {
                            userinput += '9';
                            setState(() {

                            });
                          },
                        ),
                        MyButton(
                          button: '*',
                          color: const Color(0xffa5a5a5),
                          onPress: () {
                            userinput += '*';
                            setState(() {

                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          button: '4',
                          onPress: () {
                            userinput += '4';
                            setState(() {

                            });
                          },
                        ),
                        MyButton(
                          button: '5',
                          onPress: () {
                            userinput += '5';
                            setState(() {

                            });
                          },
                        ),
                        MyButton(
                          button: '6',
                          onPress: () {
                            userinput += '6';
                            setState(() {

                            });
                          },
                        ),
                        MyButton(
                          button: '-',
                          color: const Color(0xffa5a5a5),
                          onPress: () {
                            userinput += '-';
                            setState(() {

                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          button: '1',
                          onPress: () {
                            userinput += '1';
                            setState(() {

                            });
                          },
                        ),
                        MyButton(
                          button: '2',
                          onPress: () {
                            userinput += '2';
                            setState(() {

                            });
                          },
                        ),
                        MyButton(
                          button: '3',
                          onPress: () {
                            userinput += '3';
                            setState(() {

                            });
                          },
                        ),
                        MyButton(
                          button: '+',
                          color: const Color(0xffa5a5a5),
                          onPress: () {
                            userinput += '+';
                            setState(() {

                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          button: '0',
                          onPress: () {
                            userinput += '0';
                            setState(() {

                            });
                          },
                        ),
                        MyButton(
                          button: '.',
                          onPress: () {
                            userinput += '.';
                            setState(() {

                            });
                          },
                        ),
                        MyButton(
                          button: 'Del',
                          onPress: () {
                            userinput = userinput.substring(0 , userinput.length -1);
                            setState(() {

                            });
                          },
                        ),
                        MyButton(
                          button: '=',
                          color: const Color(0xffa5a5a5),
                          onPress: () {
                            equalPress();
                            setState(() {

                            });

                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

    );

  }
  void equalPress(){
    Parser p = Parser();
    Expression expression = p.parse(userinput);
    ContextModel contextModel = ContextModel();
    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    output = eval.toString();
  }
}
