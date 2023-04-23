import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/colors.dart';

class NameBox extends ConsumerWidget {
  const NameBox({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 195,
      decoration: const BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 40),
        child: Text(
          'Hello!\nSteve Smith',
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 34,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
