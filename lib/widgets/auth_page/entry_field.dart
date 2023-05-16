import 'package:flutter/material.dart';

class EntryField extends StatefulWidget {
  const EntryField({
    super.key,
  });

  @override
  State<EntryField> createState() => _EntryFieldState();
}

class _EntryFieldState extends State<EntryField> {

  final _loginTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  void _auth(){
    final login = _loginTextController.text;
    final password = _passwordTextController;
    if (login == 'admin' && password == 'admin') {
      print('Open App');
      ///todo СДЕЛАЙ РАБОЧИЙ ПРИНТ!!!
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Email:',
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _loginTextController,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(
                    color: Colors.green,
                    width: 2.0,
                  ),
                ),
              ),
            ),
          ),
          Text(
            'Пароль',
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _passwordTextController,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(
                    color: Colors.green,
                    width: 2.0,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: ElevatedButton(
              onPressed: _auth,
              child: Text('Войти через ВКонтакте'),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.deepPurpleAccent),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
                ))
              ),
            ),
          )
        ],
      ),
    );
  }
}
