import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
class IconButtonWithCounter extends StatelessWidget {
  final VoidCallback press;
  final String icon;
  final int counter;

  const IconButtonWithCounter({
    Key? key,
    required this.press,
    required this.icon,
    this.counter = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(12)),
            height: getProportionateScreenWidth(46),
            width: getProportionateScreenWidth(46),
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(icon),
          ),
          if (counter != 0)
            Positioned(
              top: -3,
              right: 0,
              child: Container(
                height: getProportionateScreenWidth(16),
                width: getProportionateScreenWidth(16),
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
                child: Center(
                    child: Text(
                      counter.toString(),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: getProportionateScreenWidth(12),
                          fontWeight: FontWeight.w600),
                    )),
              ),
            )
        ],
      ),
    );
  }
}
