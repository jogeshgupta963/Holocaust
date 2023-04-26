import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/colors.dart';

class PrecautionSection extends ConsumerWidget {
  const PrecautionSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: ListView(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: [
          ListTile(
            title: Text(
              'Precautions:',
              style: GoogleFonts.poppins(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.check,
              color: secondaryColor,
            ),
            title: Text(
              'Use private network for transactions instead of public wifi',
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.check,
              color: secondaryColor,
            ),
            title: Text(
              'Do not share OTP with anyone',
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.check,
              color: secondaryColor,
            ),
            title: Text(
              'Prevent clicking on links and SMS',
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.check,
              color: secondaryColor,
            ),
            title: Text(
              'Logout of accounts when logged in on public or other devices',
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
