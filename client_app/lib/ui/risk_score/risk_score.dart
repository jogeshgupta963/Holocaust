import 'dart:ffi';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kavach/constants/colors.dart';
import 'package:kavach/ui/risk_score/widgets/risk_score_box.dart';
import 'package:kavach/ui/risk_score/widgets/precautions_section.dart';

@RoutePage()
class RiskScorePage extends ConsumerStatefulWidget {
  final List<double> messageData;
  const RiskScorePage({super.key, required this.messageData});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _RiskScorePageState();
}

class _RiskScorePageState extends ConsumerState<RiskScorePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            RiskScoreBox(data: widget.messageData),
            const SizedBox(height: 20),
            const PrecautionSection(),
            const SizedBox(height: 40),
            Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                'STAY SAFE',
                style: GoogleFonts.poppins(
                  color: secondaryColor,
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
