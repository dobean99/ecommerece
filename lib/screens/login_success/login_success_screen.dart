import 'package:ecommerce/components/default_button.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class LoginSuccess extends StatelessWidget {
  static String routeName = '/login_success';

  const LoginSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Success'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Image.asset(
            'assets/images/success.png',
            height: SizeConfig.screenHeight * 0.4,
          ),
          Spacer(),
          Text(
            'Login Success',
            style: TextStyle(
              fontSize: getProportionateScreenWidth(30),
              color: Colors.black,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)),
            child: DefaultButton(text: "Go to Home", press: () {}),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
