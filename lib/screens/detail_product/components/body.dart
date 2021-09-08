import 'package:ecommerce/components/default_button.dart';
import 'package:ecommerce/models/product.dart';
import 'package:ecommerce/screens/detail_product/components/product_description.dart';
import 'package:ecommerce/screens/detail_product/components/product_images.dart';
import 'package:ecommerce/screens/detail_product/components/rounded_container.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';
import 'color_dots.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImages(product: product),
          RoundedContainer(color: Colors.white, child: Column(
            children: [
              ProductDescription(
                product: product,
                press: () {},
              ),
              RoundedContainer(
                color: Color(0XFFF5F6F9),
                child: Column(
                  children: [
                    ColorDots(product: product),
                    RoundedContainer(color:Colors.white,child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
                      child: DefaultButton(text: 'Add to cart', press: (){}),
                    ))
                  ],
                ),
              ),
            ],
          ))

        ],
      ),
    );
  }
}




