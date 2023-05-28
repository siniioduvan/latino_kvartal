import 'package:flutter/material.dart';

class TeachersData {
  final String imageUrl;
  final String nameSurname;
  final String directions;

  TeachersData(this.imageUrl, this.nameSurname, this.directions);
}

class TeachersPage extends StatelessWidget {
  TeachersPage({Key? key}) : super(key: key);

  final List<TeachersData> teachersData = [
    TeachersData(
      'assets/images/news_pics/1.jpeg',
      'Курин Антон',
      'Бразильский зук, бачата, сальса',
    ),
    TeachersData(
      'assets/images/news_pics/1.jpeg',
      'Не Антон',
      'Литрбол, пьяное плавание',
    ),
    TeachersData(
      'assets/images/news_pics/1.jpeg',
      'Снова не Антон',
      'Всё что угодно кроме танцев',
    ),
    TeachersData(
      'assets/images/news_pics/1.jpeg',
      'Кто нибудь еще',
      'Профессиональное поедание пельмешков',
    ),
    TeachersData(
      'assets/images/news_pics/1.jpeg',
      'Вроде Настя',
      'Так...это которая Настя то?',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 80,
        title: const Text('Преподаватели'),
      ),
      body: SingleChildScrollView(
        child: Column(
            children: teachersData
                .map((element) => TeachersCard(data: element))
                .toList()),
      ),
    );
  }
}

class TeachersCard extends StatelessWidget {
  final TeachersData data;

  const TeachersCard({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            height: 120,
            width: 120,
            child: Image.asset(data.imageUrl),
          ),
           Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data.nameSurname,
                    style: TextStyle(fontSize: 30),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                  SizedBox(height: 10),
                  Text(data.directions, overflow: TextOverflow.ellipsis, maxLines: 2,),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
