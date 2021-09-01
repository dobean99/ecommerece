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
        Text("Don't have an account"),
        TextButton(
            onPressed: () {},
            child: Text(
              'Sign up',
              style: TextStyle(color: kPrimaryColor),
            ))
      ],
    );
  }
}
