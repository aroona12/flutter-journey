import 'package:flutter/material.dart';
import 'package:navigation_drawer_practice/screen_2.dart';
import 'package:navigation_drawer_practice/screen_3.dart';

class Screen1 extends StatefulWidget {
  static const String id = 'screen_1';
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: const Text('Navigator Drawer'),
        ),
        drawer: Drawer(
          child: ListView(
            children:  [
              const UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                 backgroundImage: NetworkImage('https://i.pinimg.com/originals/56/c6/7e/56c67e6933828b6e99269c143a73c464.jpg'),
                ),
                  accountName: Text('Aroona'),
                  accountEmail: Text('bibiaroona11@gmail.com')),
              ListTile(
                leading: Icon( Icons.home),
                title: Text('home'),
                onTap: (){
                  Navigator.pushNamed(context, Screen2.id);
                },
              ),
              ListTile(
                leading: const Icon( Icons.delete),
                title: const Text('Bin'),
                onTap: (){
                  Navigator.pushNamed(context, Screen1.id);
                },
              ),
              ListTile(
                leading: Icon( Icons.offline_pin_outlined),
                title: Text('offline'),
                onTap: (){
                  Navigator.pushNamed(context, Screen2.id);
                },
              ),
               ListTile(
                leading: Icon( Icons.backup_outlined),
                title: Text('BackUp'),
                 onTap: (){
                   Navigator.pushNamed(context, Screen3.id);
                 },
              ),
              ListTile(
                leading: Icon( Icons.settings),
                title: Text('Setting'),
                onTap: (){
                  Navigator.pushNamed(context, Screen3.id);
                },
              ),

            ],

          ),
        ),
        body: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, Screen2.id);
                },
                child: const Text('screen1',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,backgroundColor: Colors.cyanAccent),),
              ),
            )
          ],
        ),
      );
  }
}
