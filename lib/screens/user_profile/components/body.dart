import 'package:ecommerce/screens/user_profile/components/profile_item.dart';
import 'package:ecommerce/screens/user_profile/components/profile_picture.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfilePicture(),
        ProfileItem(
          icon: 'assets/icons/User Icon.svg',
          text: 'My account',
          press: () {},
        ),
        ProfileItem(
          icon: 'assets/icons/Bell.svg',
          text: 'Notification',
          press: () {},
        ),
        ProfileItem(
          icon: 'assets/icons/Settings.svg',
          text: 'Settings',
          press: () {},
        ),
        ProfileItem(
          icon: 'assets/icons/Question mark.svg',
          text: 'Help center',
          press: () {},
        ),
        ProfileItem(
          icon: 'assets/icons/Log out.svg',
          text: 'Log out',
          press: () {},
        ),
      ],
    );
  }
}

