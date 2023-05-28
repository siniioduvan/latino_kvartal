import 'package:flutter/material.dart';
import 'package:latino_kvartal/widgets/shedule_page/level_widget.dart';
import 'package:latino_kvartal/widgets/shedule_page/shedule_table.dart';


class ShedulePage extends StatelessWidget {
  const ShedulePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 55,
        title: Text('Расписание занятий'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                LevelWidget(),
                SizedBox(height: 15,),
                SheduleTable()
              ],
            ),
          ),
        ),
      ),
    );
  }
}


