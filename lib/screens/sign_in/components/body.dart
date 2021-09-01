import 'package:ecommerce/components/no_account.dart';
import 'package:ecommerce/screens/sign_in/components/sign_in_form.dart';
import 'package:ecommerce/screens/sign_in/components/social_widget.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  'Welcome!',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(18),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Sign in with your email and password  \nor continue with social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                SignInForm(),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialWidget(
                      image: 'assets/icons/google-icon.svg',
                    ),
                    SocialWidget(
                      image: 'assets/icons/facebook-2.svg',
                    ),
                    SocialWidget(
                      image: 'assets/icons/twitter.svg',
                    ),
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                NoAccount(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

