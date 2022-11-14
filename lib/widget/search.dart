import 'package:explore/utilities/const.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({
    Key? key,
  }) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextField(textAlign: TextAlign.start, decoration: kTextDecoration),
    );
  }
}
