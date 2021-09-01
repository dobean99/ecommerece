import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../../../size_config.dart';

class CustomSuffixIcon extends StatelessWidget {
  final String icon;

  const CustomSuffixIcon({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        0,
        getProportionateScreenWidth(20),
        getProportionateScreenWidth(20),
        getProportionateScreenWidth(20),
      ),
      child: SvgPicture.asset(
        icon,
        height: getProportionateScreenWidth(18),
      ),
    );
  }
}
