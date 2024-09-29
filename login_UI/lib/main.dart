
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('https://th.bing.com/th/id/OIP.jI8iebhALon8mMX35ieY-wHaEK?rs=1&pid=ImgDetMain'),
              fit: BoxFit.cover,
            ),
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 130, right: 15, left: 30),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 330,
                        width: 330,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(30),
                              topLeft: Radius.circular(30)),
                          color: Colors.grey[900],
                        ),
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 50),
                            ),
                            const CircleAvatar(
                              radius: 50,
                              foregroundImage: AssetImage('assets/login.jpg'),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 15, left: 10, right: 10),
                              child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: const InputDecoration(
                                    labelText: 'Email',
                                    focusedBorder: OutlineInputBorder(),
                                    enabledBorder: OutlineInputBorder(),
                                    prefixIcon: Icon(Icons.email_rounded),
                                    fillColor: Colors.white,
                                    filled: true),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 8, left: 10, right: 10),
                              child: TextFormField(
                                keyboardType: TextInputType.visiblePassword,
                                decoration: const InputDecoration(
                                  labelText:'Password',
                                  prefixIcon: Icon(
                                    Icons.lock_open,
                                    color: Colors.black,
                                  ),
                                  suffixIcon: Icon(Icons.visibility_off_outlined),
                                  fillColor: Colors.white,
                                  filled: true,
                                  focusedBorder: OutlineInputBorder(),
                                  enabledBorder: OutlineInputBorder(),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [

                          Container(
                            height: 50,
                            width: 330,
                            decoration: BoxDecoration(
                                color: Colors.grey[900],
                                borderRadius: const BorderRadius.only(
                                    bottomRight: Radius.circular(25),
                                    bottomLeft: Radius.circular(25))),
                            child:  Column(
                              children: [

                               GestureDetector(
                                 onTap: (){
                                   print('login');
                                 },
                                 child: const Padding(
                                    padding: EdgeInsets.only(top: 12),
                                    child: Text(
                                      'LOGIN',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                               )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
