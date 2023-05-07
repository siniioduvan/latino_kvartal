import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> imageAsset = [
      'assets/images/news_pics/1.jpeg',
      'assets/images/news_pics/1.jpeg',
      'assets/images/news_pics/1.jpeg',
      'assets/images/news_pics/1.jpeg',
      'assets/images/news_pics/1.jpeg'
    ];

    List<String> news = [
      'Яков показывает язык разработчику 1С',
      'Яков показывает язык разработчику 1С',
      'Яков показывает язык разработчику 1С',
      'Яков показывает язык разработчику 1С',
      'Яков показывает язык разработчику 1С',
    ];

    List<Widget>post = [];

    for(var image in imageAsset){
      for(var text in news){
       final _widget = NewsPost(image: image, newsText: text);
       post.add(_widget);
      }
    }

    ///ПРОВЕРЬ АЛГОРИТМ ГЕНЕРАЦИИ ВИДЖЕТОВ!

    return Container(
      width: double.infinity,
      height: double.infinity,
      child: ListView(children: [
        Column(
          children: [
            Text(
              'Новости Латинского Квартала',
              style: TextStyle(fontSize: 25),
            ),
            Column(children: post)
          ],
        ),
      ]),
    );
  }
}

class NewsPost extends StatelessWidget {
  const NewsPost({super.key, required this.image, required this.newsText});

  final String image;
  final String newsText;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(8),
        color: Colors.green,
        child: Column(
          children: [
            Text(newsText),
            SizedBox(
              height: 6,
            ),
            Image.asset(image)
          ],
        ));
  }
}
