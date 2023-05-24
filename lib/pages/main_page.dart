import 'package:flutter/material.dart';
import 'package:latino_kvartal/future/drawer.dart';

class MainPage extends StatelessWidget {
  final List<PostData> postData = [
    PostData(
      'Разработчик С# показывает язык разработчику 1С',
      'assets/images/news_pics/1.jpeg',
    ),
    PostData(
      'Самара из фильма "Звонок" теперь танцует в Латинском Квартале',
      'assets/images/news_pics/2.jpeg',
    ),
    PostData(
      'Грустные вечеринки с грустными танцами. Не пропусти!',
      'assets/images/news_pics/3.jpeg',
    ),
    PostData(
      'Конкурс мокрых рубашек и больших сисек прошел на ура!',
      'assets/images/news_pics/4.jpeg',
    ),
  ];

  MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerMainMenu(),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/userProfile');
            },
            icon: const Icon(Icons.account_circle_outlined),
          ),
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: ListView(children: [
          Column(
            children: [
              const Text(
                'Новости Латинского Квартала',
                style: TextStyle(fontSize: 25),
              ),
              Column(
                children: postData.map((data) => NewsPost(data: data)).toList(),
              )
            ],
          ),
        ]),
      ),
    );
  }
}

class PostData {
  final String text;
  final String image;

  PostData(this.text, this.image);
}

class NewsPost extends StatelessWidget {
  final PostData data;

  const NewsPost({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Text(data.text),
            const SizedBox(
              height: 6,
            ),
            Image.asset(data.image)
          ],
        ));
  }
}
