import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latino_kvartal/widgets/auth_page/entry_field.dart';
import 'package:latino_kvartal/widgets/auth_page/header_widget.dart';


class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: [
          HeaderWidget(),
          EntryField()
        ],
    );
  }
}





