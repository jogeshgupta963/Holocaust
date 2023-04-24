// ignore_for_file: use_build_context_synchronously

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kavach/constants/colors.dart';
import 'package:kavach/ui/home/home_page_model.dart';
import 'package:kavach/ui/home/widgets/graph_box.dart';
import 'package:kavach/ui/home/widgets/name_box.dart';
import 'package:kavach/ui/home/widgets/spam_box.dart';
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
      child: SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              NameBox(),
              SizedBox(height: 30),
              CheckSpamBox(),
              SizedBox(height: 20),
              GraphBox(),
            ],
          ),
        )),
      ),
    );
  }
}
