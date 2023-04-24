import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import '../home_page_model.dart';

final FocusNode focusNode = FocusNode();

class SearchField extends ConsumerStatefulWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  ConsumerState<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends ConsumerState<SearchField> {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: 1,
      maxLength: 2000,
      focusNode: focusNode,
      textAlignVertical: TextAlignVertical.center,
      controller: controller,
      style: GoogleFonts.poppins(
        fontSize: 15,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
      ),
      textInputAction: TextInputAction.newline,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xffD6E8FF),
        hintText: 'Type The Message Here',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.only(
          left: 15,
          right: 15,
          top: 10,
        ),
        hintStyle: GoogleFonts.outfit(
          fontSize: 15,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w400,
          color: Colors.grey,
        ),
      ),
      onChanged: ref.read(homePageProvider.notifier).setSmsMessage,
    );
  }
}
