import 'package:flutter/material.dart';

import '../../../size_config.dart';

class BannerDiscount extends StatelessWidget {
  const BannerDiscount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20),vertical: getProportionateScreenWidth(15)),
      width: double.infinity,
      decoration:BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(15)
      ),
      child: Text.rich(
          TextSpan(
              text: 'A summer surprise\n',
              style: TextStyle(color: Colors.white),
              children: [
                TextSpan(
                    text: 'Cashback 20%',
                    style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold)
                )
              ]
          )
      ),
    );
  }
}
