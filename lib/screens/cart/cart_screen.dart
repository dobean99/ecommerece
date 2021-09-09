import 'package:ecommerce/components/default_button.dart';
import 'package:ecommerce/models/cart.dart';
import 'package:ecommerce/screens/cart/component/body.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CartScreen extends StatelessWidget {
  static String routeName = '/cart_screen';

  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: CheckCart(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text('Your cart'),
          Text(
            '${demoCarts.length} items',
            style: Theme.of(context).textTheme.caption,
          )
        ],
      ),
      centerTitle: true,
    );
  }
}

class CheckCart extends StatelessWidget {
  const CheckCart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(30),
          vertical: getProportionateScreenWidth(30)),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
                blurRadius: 10,
                offset: Offset(0, -15),
                color: Color(0xFFDADADA))
          ]),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  height: getProportionateScreenWidth(40),
                  width: getProportionateScreenWidth(40),
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F6F9),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: SvgPicture.asset('assets/icons/receipt.svg'),
                ),
                Spacer(),
                Text("Add your code"),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(TextSpan(text: 'Total:\n', children: [
                  TextSpan(
                    text: '\$337.15',
                    style: TextStyle(fontSize: 16),
                  )
                 ])),
                SizedBox(
                    width: getProportionateScreenWidth(190),
                    child: DefaultButton(text: 'Check out', press: () {}))
              ],
            )
          ],
        ),
      ),
    );
  }
}
