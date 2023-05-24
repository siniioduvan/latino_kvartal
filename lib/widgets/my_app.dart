import 'package:flutter/material.dart';
import 'package:latino_kvartal/pages/auth_page.dart';
import 'package:latino_kvartal/pages/in_drawer/contacts_page.dart';
import 'package:latino_kvartal/pages/in_drawer/directions_page.dart';
import 'package:latino_kvartal/pages/in_drawer/shedule_page.dart';
import 'package:latino_kvartal/pages/in_drawer/teachers_page.dart';
import 'package:latino_kvartal/pages/main_page.dart';
import 'package:latino_kvartal/pages/user_profile.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      ///todo сделать смену темы на черную/белую

      //theme: ThemeData.dark(),
      initialRoute: '/authPage',
      routes: {
        '/authPage': (context) => const AuthPage(),
        '/mainPage': (context) => MainPage(),
        '/userProfile': (context) => const UserProfile(),
        '/contactsPage': (context) => const ContactsPage(),
        '/directionsPage': (context) => DirectionsPage(),
        '/shedulePage': (context) => const ShedulePage(),
        '/teachersPage': (context) =>  TeachersPage()

      },
    );
  }
}
