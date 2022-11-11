import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const kRed = Colors.red;

InputDecoration kTextDecoration = InputDecoration(
  filled: true,
  focusColor: Colors.white24,
  fillColor: Colors.white24,
  hintText: 'Search Country',
  hintStyle: GoogleFonts.pangolin(fontSize: 20),
  prefixIcon: const Icon(
    Icons.search,
    color: Colors.black,
  ),
  border: const OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black, style: BorderStyle.solid),
    borderRadius: BorderRadius.all(
      Radius.circular(1.8),
    ),
  ),
  focusedBorder: const OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black87, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(2.0)),
  ),
);
