import 'package:flutter/material.dart';

class ShedulePage extends StatelessWidget {
  const ShedulePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 55,
        title: Text('Расписание занятий'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Тут будет расписание занятий, не знаю как оформить'),
          ],
        ),
      ),
    );
  }
}
