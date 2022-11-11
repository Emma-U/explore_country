import 'package:explore/utilities/const.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child:
          TextField(textAlign: TextAlign.center, decoration: kTextDecoration),
    );
  }
}
