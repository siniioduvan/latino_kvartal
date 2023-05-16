import 'package:flutter/material.dart';
import 'package:latino_kvartal/future/drawer.dart';
import 'package:latino_kvartal/pages/auth_page.dart';
import 'package:latino_kvartal/pages/main_page.dart';
import 'package:latino_kvartal/pages/user_profile.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(actions: [
          IconButton(
            icon: const Icon(Icons.people_alt_outlined),
            tooltip: 'Open user profile',
            onPressed: () {
              // handle the press
            },
          ),
        ]),
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.deepPurple,
                  Colors.deepOrange
                ]
              )
            ),
            child: AuthPage(),
          ),
        ),
        drawer: DrawerMainMenu(),
      ),
    );
  }
}
