import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SizedBox(height: 20,),
          Text(
              'Латинский квартал',
              style: TextStyle(fontSize: 36, color: Colors.white),
          ),
          Text('Войти:', style: TextStyle(fontSize: 24, color: Colors.white)),
          SizedBox(height: 60,),
        ],
      ),
    );
  }
}