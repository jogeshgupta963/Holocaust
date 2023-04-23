import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kavach/routing/router.dart';

import '../../widgets/bottom_bar.dart';

@RoutePage()
class MainPage extends ConsumerWidget {
  const MainPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AutoTabsScaffold(
      animationCurve: Curves.bounceInOut,
      routes: const [
        HomeRoute(),
        CommunityRoute(),
        ReportRoute(),
        ProfileRoute(),
      ],
      bottomNavigationBuilder: (context, tabsRouter) => BottomBar(
        key: ValueKey(tabsRouter.activeIndex),
      ),
    );
  }
}
