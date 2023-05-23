import 'package:flutter/material.dart';

class DrawerMainMenu extends StatelessWidget {
  const DrawerMainMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> drawerTextData = [
      'Направления',
      'Расписание',
      'Преподаватели',
      'Контакты',
    ];

    List<Widget> drawerMenuData = [];

    for (var text in drawerTextData) {
      final widget = DrawerListTile(text: text);
      drawerMenuData.add(widget);
    }

    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
              decoration: BoxDecoration(color: Colors.deepPurple[400]),
              child: SizedBox(
                  height: double.infinity,
                  width: double.infinity,
                  child: Image.asset("assets/images/main_logo.png"))),
          Column(children: drawerMenuData),
        ],
      ),
    );
  }
}

///todo СДЕЛАТЬ ИКОНКИ МЕНЮ!!! ЧЕРЕЗ АССЕТЫ ПРОЧИЕ ПРИКОЛЮХИ!

class DrawerListTile extends StatelessWidget {
  final String text;

  const DrawerListTile({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return ListTile(title: Text(text), onTap: () {});
  }
}
