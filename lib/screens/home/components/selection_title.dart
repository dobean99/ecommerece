import 'package:flutter/cupertino.dart';

import '../../../size_config.dart';

class SelectionTitle extends StatelessWidget {
  final String title;
  final VoidCallback press;
  const SelectionTitle({
    Key? key, required this.title, required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(title,style: TextStyle(
              fontSize: getProportionateScreenWidth(18),
              fontWeight: FontWeight.bold
          ),),
          GestureDetector(
            onTap: press,
            child: Text(
                'See more'
            ),
          )
        ],
      ),
    );
  }
}
