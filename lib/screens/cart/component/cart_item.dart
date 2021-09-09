import 'package:ecommerce/models/cart.dart';
import 'package:flutter/cupertino.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    Key? key,
    required this.cart,
  }) : super(key: key);
  final Cart cart;

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: getProportionateScreenWidth(88),
            height: getProportionateScreenWidth(88),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xFFF5F6F9),
                    borderRadius: BorderRadius.circular(15)),
                child: Image.asset(cart.product.images[0]),
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                cart.product.title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text.rich(
                TextSpan(
                    text: "\$${cart.product.price}  ",
                    style: TextStyle(color: kPrimaryColor),
                    children: [
                      TextSpan(
                        text: "x ${cart.numOfItem}",
                        style: TextStyle(color: kTextColor),
                      ),
                    ]),
              ),
            ],
          )
        ],
      ),
    );
  }
}
