import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 115,
      height: 115,
      child: Stack(
        clipBehavior: Clip.none,
        fit: StackFit.expand,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/Profile Image.png'),
          ),
          Positioned(
              bottom: 0,
              right: -10,
              child: SizedBox(
                width: 40,
                height: 40,
                child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all(Color(0xFFF5F6F9)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)
                          )
                      )
                  ),
                  child: SvgPicture.asset('assets/icons/Camera Icon.svg'),
                ),
              ))
        ],
      ),
    );
  }
}
