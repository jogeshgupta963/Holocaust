import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../ui/community/community_page.dart';
import '../ui/home/home_page.dart';
import '../ui/main/main_page.dart';
import '../ui/profile/profile_tab.dart';
import '../ui/report/report_page.dart';
import '../ui/risk_score/risk_score.dart';
import '../ui/splash/splash.dart';

part 'router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.cupertino();

  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      path: '/',
      page: SplashRoute.page,
    ),
    AutoRoute(path: '/main', page: MainRoute.page, children: [
      AutoRoute(
        path: 'home',
        page: HomeRoute.page,
      ),
      AutoRoute(
        path: 'community',
        page: CommunityRoute.page,
      ),
      AutoRoute(
        path: 'report',
        page: ReportRoute.page,
      ),
      AutoRoute(
        path: 'profile',
        page: ProfileRoute.page,
      ),
    ]),
    AutoRoute(
      path: '/risk-score',
      page: RiskScoreRoute.page,
    ),
  ];
}
