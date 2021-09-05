import 'package:ecommerce/constants.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'otp_form.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              Text(
                'OTP Verification',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(18),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "We sent you code to: ${null}",
              ),
              buildTimer(),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              OTPForm(),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              GestureDetector(
                onTap: (){},
                child: Text('Resend OTP',style: TextStyle(decoration: TextDecoration.underline),),
              )
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('This code will expired in '),
        TweenAnimationBuilder(
          tween: IntTween(begin: 0, end: 30),
          duration: Duration(seconds: 30),
          builder: (context, value, child) => Text(
            "00:$value",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ],
    );
  }
}


