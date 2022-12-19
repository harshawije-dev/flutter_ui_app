import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_app/constants/stylesheet.dart';
import 'package:flutter_ui_app/routing/routes.dart';
import 'package:get/get.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();
  var activeItem = overViewPageRoute.obs;
  var hoverItem = "".obs;

  isActive(String itemName) => activeItem.value == itemName;
  isHovered(String itemName) => hoverItem.value == itemName;

  changeActiveitemTo(String itemName) {
    activeItem.value = itemName;
  }

  onHover(String itemName) {
    if (!isActive(itemName)) {
      hoverItem.value = itemName;
    }
  }

  Widget returnIconFor(String itemName) {
    switch (itemName) {
      case overViewPageRoute:
        return customIcon(itemName, Icons.trending_up);
      case driversPageRoute:
        return customIcon(itemName, Icons.drive_eta);
      case clientsPageRoute:
        return customIcon(itemName, Icons.people_alt_outlined);
      case authenticationPageRoute:
        return customIcon(itemName, Icons.exit_to_app);
      default:
        return customIcon(itemName, Icons.exit_to_app);
    }
  }

  Widget customIcon(String itemName, IconData icon) {
    if (!isActive(itemName)) {
      return Icon(
        icon,
        size: 22,
        color: dark,
      );
    }
    return Icon(icon, color: isHovered(itemName) ? dark : lightGray);
  }
}
