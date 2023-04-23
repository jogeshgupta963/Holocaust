import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../widgets/custom_button.dart';
import 'risk_chart.dart';

class RiskScoreBox extends ConsumerStatefulWidget {
  final String message;
  const RiskScoreBox({super.key, required this.message});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PieChartBoxState();
}

class _PieChartBoxState extends ConsumerState<RiskScoreBox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        // height: 350,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              color: Colors.grey.shade300,
            ),
          ],
        ),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Text(
              'Risk Score',
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            RiskChart(message: widget.message),
            CustomButton(
              isActive: false,
              onTap: () {},
              title: 'Report Spam',
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
