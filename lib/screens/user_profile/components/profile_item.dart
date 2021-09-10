import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem({
    Key? key,
    required this.icon,
    required this.text,
    required this.press,
  }) : super(key: key);
  final String icon;
  final String text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextButton(
          onPressed: press,
          style: ButtonStyle(
              padding:
              MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(10)),
              backgroundColor: MaterialStateProperty.all(Color(0xFFF5F6F9)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)))),
          child: Row(
            children: [
              SvgPicture.asset(
                icon,
                color: kPrimaryColor,
                width: 22,
              ),
              SizedBox(
                width: 25,
              ),
              Expanded(
                  child: Text(
                    text,
                    style: Theme.of(context).textTheme.bodyText1,
                  )),
              SizedBox(
                width: 25,
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: kTextColor,
              ),
            ],
          )),
    );
  }
}
