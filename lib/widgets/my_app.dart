import 'package:flutter/material.dart';
import 'package:latino_kvartal/pages/user_profile.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: UserProfile(),
      ),
    );
  }
}
