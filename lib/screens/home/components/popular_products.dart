import 'package:ecommerce/models/product.dart';
import 'package:ecommerce/screens/detail_product/detail_product_screen.dart';
import 'package:ecommerce/screens/home/components/product_card.dart';
import 'package:ecommerce/screens/home/components/selection_title.dart';
import 'package:flutter/cupertino.dart';

import '../../../size_config.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SelectionTitle(title: 'Popular Product', press: () {}),
        SizedBox(
          height: getProportionateScreenWidth(20),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                  demoProducts.length,
                  (index) => demoProducts[index].isPopular
                      ? ProductCard(
                          product: demoProducts[index],
                          tap: () {
                            Navigator.pushNamed(
                                context, DetailProductScreen.routeName,
                                arguments: DetailProductArgument(
                                  product: demoProducts[index],
                                ));
                          })
                      : SizedBox.shrink())
            ],
          ),
        ),
      ],
    );
  }
}
