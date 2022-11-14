import 'package:explore/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          Text(
            'Explore',
            style: GoogleFonts.pacifico(fontSize: 30),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5.0),
            child: Text(
              '.',
              style: TextStyle(
                color: kBlack,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          )
        ],
      ),
    );
  }
}
