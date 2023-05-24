import 'package:flutter/material.dart';

class DirectionsPage extends StatelessWidget {
  DirectionsPage({Key? key}) : super(key: key);

  List<String> buttonName = ['Бачата', 'Сальса', 'Бразильский зук'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 85,
        title: Text('Направления'),
      ),
      body: Center(
        child: Column(
          children: buttonName.map((data) => DirectionsButton(textButton: data,)).toList()
        ),
      ),
    );
  }
}

class DirectionsButton extends StatelessWidget {
  final String textButton;

  const DirectionsButton({
    super.key, required this.textButton,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 15,),
        Container(
            height: 100,
            width: 300,
            child: ElevatedButton(onPressed: (){}, child: Text(textButton))),
      ],
    );
  }
}
