import 'package:flutter/material.dart';
import 'package:flutter_ui_app/helpers/responsive.dart';

AppBar navBar(BuildContext context, GlobalKey<ScaffoldState> key) => AppBar(
      elevation: 0,
      leading: !Responsive.isSmallScreen(context)
          ? Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 14),
                  child: Image.asset(
                    "assets/icons/logo.png",
                    width: 35,
                  ),
                )
              ],
            )
          : IconButton(
              onPressed: () {
                key.currentState?.openDrawer();
              },
              icon: const Icon(Icons.menu)),
    );
