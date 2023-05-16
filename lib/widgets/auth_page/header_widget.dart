import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        children: [
          SizedBox(height: 20,),
          Text(
              'Латинский квартал',
              style: GoogleFonts.acme(fontSize: 36)
          ),
          Text('Войти:', style: GoogleFonts.acme(fontSize: 24)),
          SizedBox(height: 60,),
        ],
      ),
    );
  }
}