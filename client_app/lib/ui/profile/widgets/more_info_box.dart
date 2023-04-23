import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/colors.dart';

class MoreInfoBox extends ConsumerWidget {
  const MoreInfoBox({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'More',
            style: GoogleFonts.dmSans(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 15,
                  color: Colors.grey.shade200,
                )
              ],
              borderRadius: BorderRadius.circular(20),
            ),
            child: ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                ListTile(
                  leading: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: const Color(0xff076CEF).withOpacity(0.2),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: const Center(
                      child: Icon(
                        CupertinoIcons.bell,
                      ),
                    ),
                  ),
                  title: Text(
                    'Help & Support',
                    style: GoogleFonts.dmSans(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff181D27),
                    ),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                  ),
                ),
                SizedBox(
                  height: 20,
                  child: Divider(
                    color: secondaryColor.withOpacity(0.5),
                    thickness: 1.5,
                  ),
                ),
                ListTile(
                  leading: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: const Color(0xff076CEF).withOpacity(0.2),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: const Center(
                      child: Icon(
                        CupertinoIcons.heart,
                      ),
                    ),
                  ),
                  title: Text(
                    'About App',
                    style: GoogleFonts.dmSans(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff181D27),
                    ),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
