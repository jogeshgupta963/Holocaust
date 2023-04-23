// ignore_for_file: use_build_context_synchronously

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kavach/routing/router.dart';
import 'package:kavach/ui/home/home_page_model.dart';
import 'package:kavach/widgets/custom_button.dart';

import '../../../constants/colors.dart';
import '../../../utils/snack_bar_utils.dart';
import 'search_text_field.dart';

class CheckSpamBox extends ConsumerWidget {
  const CheckSpamBox({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final status = ref.watch(homePageProvider.select((_) => _.loadingStatus));
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 12,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              spreadRadius: 0,
              blurRadius: 18,
              offset: const Offset(0, 4),
              color: Colors.black.withOpacity(.1),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Enter link / sms /  phone number',
              style: GoogleFonts.poppins(
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const SearchField(),
            const SizedBox(
              height: 5,
            ),
            CustomButton(
              isActive: status == LoadingStatus.loading,
              onTap: () async {
                if (status == LoadingStatus.loading) {
                  return;
                }
                final messageData = await ref
                    .read(homePageProvider.notifier)
                    .checkSpamMessage();
                if (messageData.success == false) {
                  showMessage(context, messageData.data);
                } else {
                  focusNode.unfocus();
                  context.navigateTo(RiskScoreRoute(message: messageData.data));
                }
              },
              title: 'Check Risk Score',
            )
          ],
        ),
      ),
    );
  }
}
