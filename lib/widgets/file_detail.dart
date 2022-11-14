import 'package:flutter/material.dart';

class FileDetail extends StatelessWidget {
  const FileDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Card(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            children: const [
              Icon(Icons.language),
              Text('EN'),
            ],
          ),
        ),
      ),
      Card(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            children: const [
              Icon(Icons.filter_alt_outlined),
              Text('Filter'),
            ],
          ),
        ),
      )
    ]);
  }
}
