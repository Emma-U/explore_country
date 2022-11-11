import 'package:explore/page/filter.dart';
import 'package:explore/page/language.dart';
import 'package:flutter/material.dart';

class BottomView extends StatelessWidget {
  const BottomView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: (() {
              showModalBottomSheet(
                  context: context, builder: (context) => const Language());
            }),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: const [
                    Icon(
                      Icons.language,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text('EN'),
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (() {
              showModalBottomSheet(
                  context: context, builder: (context) => const Filter());
            }),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: const [
                    Icon(
                      Icons.filter_alt_outlined,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text('Filter'),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
