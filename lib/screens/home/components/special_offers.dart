import 'package:ecommerce/screens/home/components/selection_title.dart';
import 'package:ecommerce/screens/home/components/special_offer_card.dart';
import 'package:flutter/cupertino.dart';

import '../../../size_config.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SelectionTitle(
          title: 'Special for you',
          press: () {},
        ),
        SizedBox(
          height: getProportionateScreenWidth(20),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                image: 'assets/images/Image Banner 2.png',
                title: 'Smart Phone',
                numberBrands: 18,
                press: () {},
              ),
              SpecialOfferCard(
                image: 'assets/images/Image Banner 3.png',
                title: 'Smart Phone',
                numberBrands: 18,
                press: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
