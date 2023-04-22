import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import '../home_page_model.dart';

class SearchField extends ConsumerStatefulWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  ConsumerState<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends ConsumerState<SearchField> {
  final TextEditingController controller = TextEditingController();
  final FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 12,
      ),
      child: Container(
        decoration: BoxDecoration(
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
        child: TextField(
          maxLines: 25,
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
            fillColor: Colors.white,
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
        ),
      ),
    );
  }
}
