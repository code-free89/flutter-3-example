import 'package:flutter/material.dart';
import 'package:home_coding/utils/constants/constants_color.dart';

textTheme() {
  return const TextTheme(
    bodyText1: TextStyle(
      fontFamily: 'Open Sans',
      fontWeight: FontWeight.w600,
      fontSize: 13,
      color: ColorConstants.blackColor,
    ),
    bodyText2: TextStyle(
      fontFamily: 'Open Sans',
      fontWeight: FontWeight.normal,
      fontSize: 13,
      color: ColorConstants.blackColor,
    ),
  );
}
