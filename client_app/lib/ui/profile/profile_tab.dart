import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kavach/ui/profile/widgets/more_info_box.dart';
import 'package:kavach/ui/profile/widgets/user_image_box.dart';
import 'package:kavach/ui/profile/widgets/user_info_box.dart';
import 'package:kavach/widgets/custom_button.dart';

import '../../constants/colors.dart';

@RoutePage()
class ProfilePage extends ConsumerStatefulWidget {
  const ProfilePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProfilePageState();
}

class _ProfilePageState extends ConsumerState<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: const Icon(
            Icons.more_vert,
          ),
          elevation: 0.5,
          title: Center(
            child: Text(
              'Profile      ',
              style: GoogleFonts.poppins(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          actions: const [
            Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const UserImage(),
              const UserInfoBox(),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: CustomButton(
                  isActive: false,
                  onTap: () {},
                  title: 'UPDATE PROFILE',
                ),
              ),
              const SizedBox(height: 20),
              const MoreInfoBox(),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
