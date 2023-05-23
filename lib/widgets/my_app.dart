import 'package:flutter/material.dart';
import 'package:latino_kvartal/pages/main_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      initialRoute: '/auth',
      routes: {
        '/auth': (context) => MainPage(),
      },
    );
  }
}
