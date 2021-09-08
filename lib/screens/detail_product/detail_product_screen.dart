import 'package:ecommerce/models/product.dart';
import 'package:flutter/material.dart';
import 'components/body.dart';
import 'components/custom_appbar.dart';

class DetailProductScreen extends StatelessWidget {
  static String routeName = '/detail_product';

  const DetailProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)!.settings.arguments as DetailProductArgument;
    return Scaffold(
      backgroundColor: Color(0XFFF5F6F9),
      appBar: CustomAppbar(
        rating: arguments.product.rating,
      ),
      body: Body(
        product: arguments.product,
      ),
    );
  }
}

class DetailProductArgument {
  final Product product;

  DetailProductArgument({required this.product});
}
