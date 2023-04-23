import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kavach/constants/colors.dart';

class BottomBar extends ConsumerStatefulWidget {
  const BottomBar({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends ConsumerState<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPaint(
          painter: Chevron(),
          child: SizedBox(
            height: 65,
            child: SafeArea(
              child: Container(
                // color: primaryColor,
                padding: const EdgeInsets.only(
                    left: 10, right: 10, bottom: 6, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _NavigationBarItem(
                      label: 'Home',
                      icon: Icons.home,
                      isActive: context.tabsRouter.activeIndex == 0,
                      onTap: () => context.tabsRouter.setActiveIndex(0),
                    ),
                    _NavigationBarItem(
                      label: 'Community',
                      index: 1,
                      icon: Icons.manage_search,
                      isActive: context.tabsRouter.activeIndex == 1,
                      onTap: () => context.tabsRouter.setActiveIndex(1),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    _NavigationBarItem(
                      label: 'Report',
                      icon: CupertinoIcons.profile_circled,
                      isActive: context.tabsRouter.activeIndex == 2,
                      onTap: () {
                        context.tabsRouter.setActiveIndex(2);
                      },
                    ),
                    _NavigationBarItem(
                      label: 'Profile',
                      icon: CupertinoIcons.profile_circled,
                      isActive: context.tabsRouter.activeIndex == 3,
                      onTap: () {
                        context.tabsRouter.setActiveIndex(3);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
            bottom: 10,
            left: (MediaQuery.of(context).size.width / 2) - 22.5,
            child: Image.asset(
              'assets/images/logo.png',
              height: 45,
            )),
      ],
    );
  }
}

class _NavigationBarItem extends StatelessWidget {
  final String label;
  final bool isActive;
  final IconData icon;
  final VoidCallback onTap;
  final int? index;

  const _NavigationBarItem({
    required this.label,
    required this.isActive,
    required this.icon,
    required this.onTap,
    this.index,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = isActive ? Colors.grey : Colors.white;

    return SizedBox(
      width: 60,
      height: 40,
      child: GestureDetector(
        onTap: onTap,
        behavior: HitTestBehavior.opaque,
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                color: color,
                size: 26,
              ),
              Text(
                label,
                style: GoogleFonts.poppins(
                  color: color,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Chevron extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const Gradient gradient = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [primaryColor, secondaryColor],
      tileMode: TileMode.clamp,
    );

    final Rect colorBounds = Rect.fromLTRB(0, 0, size.width, size.height);
    final Paint paint = new Paint()
      ..shader = gradient.createShader(colorBounds);

    Path path = Path();
    path.moveTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.lineTo(size.width / 2, size.height / 2.5);
    path.lineTo(0, 0);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
