import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

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
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Center(
        child: Text(
          'Holocaust',
          style: GoogleFonts.sofia(
            color: Colors.pink,
            fontSize: 80,
            fontWeight: FontWeight.bold,
          ),
        ),
      )),
    );
  }

  /// navigates the user to Main page after a delay
  _navigateToMainPageAfterDelay() async {
    final router = context.router;

    await Future.delayed(const Duration(milliseconds: 4000));
    router.replace(const HomeRoute());
  }
}
