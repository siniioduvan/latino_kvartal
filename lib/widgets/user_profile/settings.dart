import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      height: 400,
      width: double.infinity,
      color: Colors.grey[400],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Настройки',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 16,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Row(
              children: const [
                Icon(Icons.settings, size: 30,color: Colors.black,),
                SizedBox(width: 15,),
                Text('Основные', style: TextStyle(
                  color: Colors.black
                ),)
              ],
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Row(
              children: const [
                Icon(Icons.settings, size: 30,color: Colors.black,),
                SizedBox(width: 15,),
                Text('Не основные', style: TextStyle(
                    color: Colors.black
                ),)
              ],
            ),
          )
        ],
      ),
    );
  }
}
