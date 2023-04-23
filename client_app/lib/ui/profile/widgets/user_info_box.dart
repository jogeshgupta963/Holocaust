import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/colors.dart';

class UserInfoBox extends ConsumerWidget {
  const UserInfoBox({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [primaryColor, Color(0xff076CEF)],
            tileMode: TileMode.clamp,
          ),
        ),
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Phone number',
              style: GoogleFonts.poppins(
                color: const Color(0xffC8C8C8),
                fontSize: 12,
              ),
            ),
            Text(
              '+91 7607615186',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
            const SizedBox(
              height: 20,
              child: Divider(
                height: 2,
                color: Colors.white,
                thickness: 1.5,
              ),
            ),
            Text(
              'Email',
              style: GoogleFonts.poppins(
                color: const Color(0xffC8C8C8),
                fontSize: 12,
              ),
            ),
            Text(
              'ayushkumarsingh0708@gmail.com',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
            const SizedBox(
              height: 20,
              child: Divider(
                height: 2,
                color: Colors.white,
                thickness: 1.5,
              ),
            ),
            Text(
              'Location',
              style: GoogleFonts.poppins(
                color: const Color(0xffC8C8C8),
                fontSize: 12,
              ),
            ),
            Text(
              'California, USA',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
