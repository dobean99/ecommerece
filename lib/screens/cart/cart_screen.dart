import 'package:ecommerce/models/cart.dart';
import 'package:ecommerce/screens/cart/component/body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'component/check_cart.dart';

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

