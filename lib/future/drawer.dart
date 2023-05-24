import 'package:flutter/material.dart';

class DrawerMainMenu extends StatelessWidget {
  const DrawerMainMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<DrawerData> drawerData = [
      DrawerData('/directionsPage', 'Направления'),
      DrawerData('/shedulePage', 'Расписание'),
      DrawerData('/teachersPage', 'Преподаватели'),
      DrawerData('/contactsPage', 'Контакты')
    ];

    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
              decoration: BoxDecoration(color: Colors.deepPurple[400]),
              child: SizedBox(
                  height: double.infinity,
                  width: double.infinity,
                  child: Image.asset("assets/images/main_logo.png"))),
          Column(children: drawerData.map((data) => DrawerListTile(data: data)).toList()),
        ],
      ),
    );
  }
}

///todo СДЕЛАТЬ ИКОНКИ МЕНЮ!!! ЧЕРЕЗ АССЕТЫ ПРОЧИЕ ПРИКОЛЮХИ!

class DrawerListTile extends StatelessWidget {
  final DrawerData data;

  const DrawerListTile({super.key, required this.data, });

  @override
  Widget build(BuildContext context) {
    return ListTile(title: Text(data.label), onTap: () {
      Navigator.of(context).pushNamed(data.url);
    });
  }
}

class DrawerData {
  final String url;
  final String label;

  DrawerData(this.url, this.label);
}

