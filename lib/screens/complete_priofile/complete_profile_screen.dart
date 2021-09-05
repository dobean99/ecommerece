import 'package:ecommerce/screens/complete_priofile/components/body.dart';
import 'package:flutter/material.dart';
class CompleteProfileScreen extends StatelessWidget {
  static String routeName='/complete_profile';
  const CompleteProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Complete Profile'
        ),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
