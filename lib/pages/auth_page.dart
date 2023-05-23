import 'package:flutter/material.dart';
import 'package:latino_kvartal/widgets/auth_page/entry_field.dart';
import 'package:latino_kvartal/widgets/auth_page/header_widget.dart';


class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.deepPurple,
                    Colors.deepOrange
                  ]
              )
          ),
          child: ListView(
            children: const [
              HeaderWidget(),
              EntryField()
            ],
          )
        ),
      ),
    );
  }
}







