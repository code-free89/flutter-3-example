import 'package:flutter/material.dart';
import 'package:home_coding/utils/constants/constants_color.dart';

buttonTheme() {
  return ButtonThemeData(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
    textTheme: ButtonTextTheme.primary,
    buttonColor: ColorConstants.primaryColor,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
  );
}

elevatedButtonTheme() {
  return ElevatedButtonThemeData(
    style: ButtonStyle(
      padding: MaterialStateProperty.all(
        const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      ),
      textStyle: MaterialStateProperty.all(
        const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontFamily: 'Open Sans',
          fontSize: 11,
        ),
      ),
      backgroundColor: MaterialStateProperty.all(
        ColorConstants.primaryColor,
      ),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      ),
    ),
  );
}
