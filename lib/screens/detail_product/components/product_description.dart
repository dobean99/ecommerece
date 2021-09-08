import 'package:ecommerce/models/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);
  final Product product;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
          ),
          child: Text(
            product.title,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: getProportionateScreenWidth(20)),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(5)),
            height: getProportionateScreenWidth(28),
            width: getProportionateScreenWidth(56),
            decoration: BoxDecoration(
                color: product.isFavourite
                    ? kPrimaryColor.withOpacity(0.15)
                    : kSecondaryColor.withOpacity(0.1),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                )),
            child: SvgPicture.asset('assets/icons/Heart Icon_2.svg',
                color: product.isFavourite ? Colors.red : Colors.grey[300]),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: getProportionateScreenWidth(20),
              right: getProportionateScreenWidth(64)),
          child: Text(
            product.description,
            maxLines: 3,
          ),
        ),
        GestureDetector(
          onTap: press,
          child: Padding(
            padding: EdgeInsets.only(
                left: getProportionateScreenWidth(20),
                bottom: getProportionateScreenWidth(20),
                right: getProportionateScreenWidth(64)),
            child: Row(
              children: [
                Text(
                  'Show more detail',
                  style: TextStyle(
                      color: kPrimaryColor, fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.navigate_next_outlined,
                  color: kPrimaryColor,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
