import 'package:flutter/material.dart';
import 'package:latino_kvartal/widgets/user_profile/header_profile.dart';
import 'package:latino_kvartal/widgets/user_profile/account.dart';
import 'package:latino_kvartal/widgets/user_profile/settings.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [Column(
        children: [
          HeaderProfile(),
          Account(),
          SizedBox(
            height: 10,
          ),
          Settings(),
        ],
      ),
    ]);
  }
}
