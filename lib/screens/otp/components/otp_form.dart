import 'package:ecommerce/components/default_button.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class OTPForm extends StatefulWidget {
  const OTPForm({Key? key}) : super(key: key);

  @override
  _OTPFormState createState() => _OTPFormState();
}

class _OTPFormState extends State<OTPForm> {
  late FocusNode pin2FocusNode;
  late FocusNode pin3FocusNode;
  late FocusNode pin4FocusNode;

  @override
  void initState() {
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
    super.dispose();
  }

  void nextField(String value, FocusNode focusNode) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: getProportionateScreenWidth(60),
                  child: TextFormField(
                    autofocus: true,
                    keyboardType: TextInputType.number,
                    obscureText: true,
                    style: TextStyle(fontSize: 24),
                    textAlign: TextAlign.center,
                    decoration: otpInputDecoration,
                    onChanged: (value) => {nextField(value, pin2FocusNode)},
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(60),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    obscureText: true,
                    style: TextStyle(fontSize: 24),
                    textAlign: TextAlign.center,
                    decoration: otpInputDecoration,
                    focusNode: pin2FocusNode,
                    onChanged: (value) => {nextField(value, pin3FocusNode)},
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(60),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    obscureText: true,
                    style: TextStyle(fontSize: 24),
                    textAlign: TextAlign.center,
                    decoration: otpInputDecoration,
                    focusNode: pin3FocusNode,
                    onChanged: (value) => {nextField(value, pin4FocusNode)},
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(60),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    obscureText: true,
                    style: TextStyle(fontSize: 24),
                    textAlign: TextAlign.center,
                    decoration: otpInputDecoration,
                    focusNode: pin4FocusNode,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: SizeConfig.screenHeight*0.4,
            ),
            DefaultButton(text: "Continue", press: () {})
          ],
        ));
  }
}