import 'package:flutter/material.dart';

class DetailsRow extends StatelessWidget {
  const DetailsRow({
    Key? key,
    required this.title,
    required this.details,
  }) : super(key: key);

  final String title;
  final String details;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
        children: [
          TextSpan(
            text: details,
            style: const TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
