import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_ui_app/widgets/screen_lg.dart';

const int xs = 360;
const int sm = 425;
const int md = 768;
const int lg = 1366;
const int xl = 1920;
const int custom = 1536;

class Responsive extends StatelessWidget {
  final Widget mediaXs;
  final Widget mediaSm;
  final Widget mediaMd;
  final Widget mediaLg;
  final Widget mediaXl;
  final Widget mediaCustom;

  const Responsive(
      {super.key,
      required this.mediaXs,
      required this.mediaSm,
      required this.mediaMd,
      required this.mediaLg,
      required this.mediaXl,
      required this.mediaCustom});

  // Extra Small Screens
  static bool isExtraSmallScreen(BuildContext context) =>
      MediaQuery.of(context).size.width < xs;

  // iPhones and Pixel Phones
  static bool isSmallScreen(BuildContext context) =>
      MediaQuery.of(context).size.width < sm;

  // Tablets
  static bool isMediumScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= md &&
      MediaQuery.of(context).size.width < lg;

  // Laptops
  static bool isLargeScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= lg &&
      MediaQuery.of(context).size.width < xl;

  // Extra Large Screens
  static bool isExtraLargeScreen(BuildContext context) =>
      MediaQuery.of(context).size.width > xl;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double width = constraints.maxWidth;

      if (width >= lg) {
        return mediaLg;
      } else if (width < lg && width >= md) {
        return mediaMd;
      } else {
        return mediaSm;
      }
    });
  }
}
