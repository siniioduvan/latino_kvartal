import 'package:flutter/material.dart';
import 'package:latino_kvartal/future/drawer.dart';
import 'package:latino_kvartal/pages/main_page.dart';
import 'package:latino_kvartal/pages/user_profile.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(),
        body: MainPage(),
        drawer: DrawerMainMenu(),
      ),
    );
  }
}
