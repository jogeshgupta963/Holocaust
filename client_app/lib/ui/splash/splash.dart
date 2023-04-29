import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants/colors.dart';
import '../../routing/router.dart';

@RoutePage()
class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage> {
  @override
  void initState() {
    super.initState();
    _navigateToMainPageAfterDelay();
  }

  @override
  Widget build(BuildContext context) {
    // set nav bar & status bar color & icon brightness

    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'assets/images/splash_logo.png',
              width: double.infinity,
              height: 400,
              fit: BoxFit.fitWidth,
            ),
            Text(
              'SPAM SHIELD',
              textAlign: TextAlign.center,
              style: GoogleFonts.nunito(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 30,
                  grade: 20,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  '100% Secure',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 30,
                  grade: 20,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Report Spam',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 30,
                  grade: 20,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Get Risk Score',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Center(
                    child: Text(
                  'Loading...',
                  style: GoogleFonts.poppins(
                    color: primaryColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                )),
              ),
            )
          ],
        ),
      )),
    );
  }

  /// navigates the user to Main page after a delay
  _navigateToMainPageAfterDelay() async {
    final router = context.router;

    await Future.delayed(const Duration(milliseconds: 2000));
    router.replace(const MainRoute());
  }
}
