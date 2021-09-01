import 'package:ecommerce/screens/sign_in/components/body.dart';
import 'package:flutter/material.dart';
class SignInScreen extends StatelessWidget {
  static String routeName='/sign_in';
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
