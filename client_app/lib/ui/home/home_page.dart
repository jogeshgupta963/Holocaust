// ignore_for_file: use_build_context_synchronously

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kavach/ui/home/home_page_model.dart';
import 'package:kavach/utils/snack_bar_utils.dart';

import 'widgets/search_text_field.dart';

@RoutePage()
class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  late DateTime time;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    time = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    final status = ref.watch(homePageProvider.select((_) => _.loadingStatus));
    return WillPopScope(
      onWillPop: () async {
        final currentTime = DateTime.now();
        if (currentTime.difference(time).inSeconds <= 2) {
          return true;
        } else {
          showMessage(context, 'Press Again');
          time = DateTime.now();
        }
        return false;
      },
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const SearchField(),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: InkWell(
                onTap: () async {
                  if (status == LoadingStatus.loading) {
                    return;
                  }
                  final message = await ref
                      .read(homePageProvider.notifier)
                      .checkSpamMessage();

                  showMessage(context, message);
                },
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.pinkAccent,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: status == LoadingStatus.loading
                        ? const SizedBox(
                            height: 20,
                            width: 20,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              color: Colors.white,
                            ),
                          )
                        : Text(
                            'Check',
                            style: GoogleFonts.poppins(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                  ),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
