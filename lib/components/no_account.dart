import 'package:ecommerce/screens/sign_up/sign_up_screen.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
class NoAccount extends StatelessWidget {
  const NoAccount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Don't have an account "),
        GestureDetector(
            onTap:  () {
              Navigator.pushNamed(context, SignUpScreen.routeName);
            },
            child: Text(
              'Sign up',
              style: TextStyle(color: kPrimaryColor),
            ))
      ],
    );
  }
}
