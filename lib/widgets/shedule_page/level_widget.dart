import 'package:flutter/material.dart';

class LevelData {
  final String levelNumber;
  final String descriptionLevel;

  LevelData(this.levelNumber, this.descriptionLevel);
}

List<LevelData> levelDataText = [
  LevelData(
    '0 уровень',
    '● значит в группу идёт набор и туда можно присоединиться.',
  ),
  LevelData(
    '1 уровень',
    '● группа занимается +-месяц. В неё можно присоединиться с разрешения преподавателя, либо через индивидуальные занятия, для освоения пройденного материала! ',
  ),
  LevelData(
    '2 уровень',
    '● группа занимается несколько месяцев. Программа обучения соответствует 2 уровню сложности. Присоединиться можно по приглашению преподавателя, либо сдав зачёт по уровню 1 плюс текущие элементы уровня 2 .',
  ),
  LevelData(
    '3 уровень',
    '● группа занимается около года или больше (в зависимости от направления). Программа обучения соответствует 3 уровню сложности. Присоединиться  можно по приглашению преподавателя, либо сдав зачёт по уровню 1-2 плюс текущие элементы уровня 3 ',
  ),
  LevelData(
    '4 уровень',
    '● группа занимается более двух лет. Присоединиться можно только по приглашению преподавателя! ',
  ),
];

class LevelWidget extends StatelessWidget {
  const LevelWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Text(
            'Уровни',
            style: TextStyle(fontSize: 30),
          ),
        ),
        Column(
          children: levelDataText
              .map((data) => ExercizeLevelData(
            data: data,
          ))
              .toList(),
        ),
      ],
    );
  }
}

class ExercizeLevelData extends StatelessWidget {
  final LevelData data;

  const ExercizeLevelData({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          data.levelNumber,
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(
          height: 5,
        ),
        Text(data.descriptionLevel),
      ],
    );
  }
}