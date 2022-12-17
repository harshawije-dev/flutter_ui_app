import 'package:flutter/material.dart';
import 'package:flutter_ui_app/helpers/responsive.dart';
import 'package:flutter_ui_app/widgets/navbar.dart';
import 'package:flutter_ui_app/widgets/screen_lg.dart';
import 'package:flutter_ui_app/widgets/screen_md.dart';
import 'package:flutter_ui_app/widgets/screen_sm.dart';

class SiteLayout extends StatelessWidget {
  const SiteLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

    return Scaffold(
        appBar: navBar(context, scaffoldKey),
        drawer: const Drawer(),
        body: const Responsive(
          mediaSm: SmallScreen(),
          mediaLg: LargeScreen(),
          mediaMd: MediumScreen(),
        ));
  }
}
