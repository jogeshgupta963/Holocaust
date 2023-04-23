import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kavach/constants/colors.dart';

showMessage(BuildContext context, String message) {
  final scaffoldMessenger = ScaffoldMessenger.of(context);
  // remove current SnackBar, if any
  scaffoldMessenger.removeCurrentSnackBar();

  // show the snack bar
  scaffoldMessenger.showSnackBar(SnackBar(
    duration: const Duration(milliseconds: 1200),
    backgroundColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    margin: const EdgeInsets.fromLTRB(80, 0, 80, 10),
    behavior: SnackBarBehavior.floating,
    padding: EdgeInsets.zero,
    content: Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Center(
        child: FittedBox(
          child: Text(
            message,
            style: GoogleFonts.montserrat(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
        ),
      ),
    ),
  ));
}
