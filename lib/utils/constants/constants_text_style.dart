import 'package:flutter/material.dart';
import 'package:home_coding/utils/constants/constants_color.dart';

abstract class TextStyles {
  static const TextStyle normalText = TextStyle(
    fontFamily: 'Open Sans',
    fontWeight: FontWeight.normal,
    fontSize: 13,
    color: ColorConstants.blackColor,
  );
  static const TextStyle semiBoldWarning = TextStyle(
    fontFamily: 'Open Sans',
    fontSize: 13,
    fontWeight: FontWeight.w600,
    color: ColorConstants.warningColor,
  );
  static const TextStyle boldCap = TextStyle(
    fontFamily: 'Open Sans',
    fontSize: 11,
    fontWeight: FontWeight.bold,
    color: ColorConstants.blackColor,
  );
}
