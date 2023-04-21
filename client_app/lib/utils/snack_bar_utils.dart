import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

showMessage(BuildContext context, String message) {
  final scaffoldMessenger = ScaffoldMessenger.of(context);
  // remove current SnackBar, if any
  scaffoldMessenger.removeCurrentSnackBar();

  // show the snack bar
  scaffoldMessenger.showSnackBar(SnackBar(
    duration: const Duration(milliseconds: 1200),
    margin: const EdgeInsets.fromLTRB(
      20.0,
      5.0,
      20.0,
      20,
    ),
    backgroundColor: Colors.amber.shade200,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    behavior: SnackBarBehavior.floating,
    padding: EdgeInsets.zero,
    content: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(
        message,
        style: GoogleFonts.montserrat(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
      ),
    ),
  ));
}
