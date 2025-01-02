import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:work/core/theming/colors.dart';

Widget otpApp(BuildContext context) {
  return PinCodeTextField(
    appContext: context,
    autoFocus: true,
    cursorColor: Colors.black,
    keyboardType: TextInputType.number,
    length: 4,
    obscureText: false,
    animationType: AnimationType.scale,
    pinTheme: PinTheme(
      shape: PinCodeFieldShape.box,
      borderRadius: BorderRadius.circular(5),
      fieldHeight: 60,
      fieldWidth: 70,
      borderWidth: 1,
      activeColor: ColorsManager.lightGray,
      inactiveColor: ColorsManager.lightGray,
      inactiveFillColor: Colors.white,
      activeFillColor: ColorsManager.lightGray,
      selectedColor: ColorsManager.lightGray,
      selectedFillColor: Colors.white,
    ),
    animationDuration: Duration(milliseconds: 300),
    backgroundColor: Colors.white,
    enableActiveFill: true,
    onCompleted: (submitedCode) {
      print("Completed");
    },
    onChanged: (value) {
      print(value);
    },
  );
}
