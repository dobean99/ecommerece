import 'package:ecommerce/screens/home/home_screen.dart';
import 'package:ecommerce/screens/user_profile/user_profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../constants.dart';
import '../enum.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);
  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActive = Color(0xFFDADADA);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.5),
          )
        ],
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, HomeScreen.routeName);
              },
              icon: SvgPicture.asset(
                'assets/icons/Shop Icon.svg',
                color:
                    selectedMenu == MenuState.home ? kPrimaryColor : inActive,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/Heart Icon.svg',
                color: selectedMenu == MenuState.favorite
                    ? kPrimaryColor
                    : inActive,
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/icons/Chat bubble Icon.svg',
                  color: selectedMenu == MenuState.message
                      ? kPrimaryColor
                      : inActive,
                )),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, UserProfileScreen.routeName);
              },
              icon: SvgPicture.asset(
                'assets/icons/User Icon.svg',
                color: selectedMenu == MenuState.profile
                    ? kPrimaryColor
                    : inActive,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
