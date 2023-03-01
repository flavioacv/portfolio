import 'package:flutter/material.dart';

class CommonMediaQuery {
  static double width(BuildContext context, {double percent = 1.0}) =>
      MediaQuery.of(context).size.width * percent;
  static double height(context, {double percent = 1.0}) =>
      MediaQuery.of(context).size.height * percent;
  static EdgeInsets viewPadding(BuildContext context) =>
      MediaQuery.of(context).viewPadding;
}
