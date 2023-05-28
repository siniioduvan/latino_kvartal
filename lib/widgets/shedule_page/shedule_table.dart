import 'package:flutter/material.dart';

class SheduleData {
  final String time;
  final String direction;
  final int hall;
  final int level;

  SheduleData(this.time, this.direction, this.hall, this.level);
}

List<SheduleData> sheduleData = [
  SheduleData('19:00', 'Bachata', 1, 0)
];


class SheduleTable extends StatelessWidget {
  const SheduleTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Понедельник',
          style: TextStyle(fontSize: 25),
        ),
        DataTable(
            horizontalMargin: 5,
            columns: [
              DataColumn(label: Text('Время')),
              DataColumn(label: Text('Направление')),
              DataColumn(label: Text('Зал')),
              DataColumn(label: Text('Уровень')),
            ], rows: [
          DataRow(
            cells: [
              DataCell(Text('19:00')),
              DataCell(Text('Bachata')),
              DataCell(Text('1')),
              DataCell(Text('2')),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('19:00')),
              DataCell(Text('Bachata')),
              DataCell(Text('1')),
              DataCell(Text('2')),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('19:00')),
              DataCell(Text('Bachata')),
              DataCell(Text('1')),
              DataCell(Text('2')),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('19:00')),
              DataCell(Text('Bachata')),
              DataCell(Text('1')),
              DataCell(Text('2')),
            ],
          ),
        ]),
      ],
    );
  }
}