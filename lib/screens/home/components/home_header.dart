import 'package:ecommerce/screens/cart/cart_screen.dart';
import 'package:ecommerce/screens/home/components/search_field.dart';
import 'package:flutter/cupertino.dart';

import '../../../size_config.dart';
import 'icon_button_with_counter.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SearchField(),
          IconButtonWithCounter(
            icon: 'assets/icons/Cart Icon.svg',
            counter: 0,
            press: () {
              Navigator.pushNamed(context, CartScreen.routeName);
            },
          ),
          IconButtonWithCounter(
            icon: 'assets/icons/Bell.svg',
            counter: 0,
            press: () {},
          ),
        ],
      ),
    );
  }
}
