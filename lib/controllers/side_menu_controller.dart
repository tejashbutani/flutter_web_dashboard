import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/style.dart';
import 'package:flutter_web_dashboard/routing/routes.dart';
import 'package:get/get.dart';

class SideMenuController extends GetxController {
  static SideMenuController instance = Get.find();
  var activeItem = overviewPageDisplayName.obs;
  var hoveringItem = ''.obs;
  var isExpanded = true.obs;

  changeActiveItemTo(String itemName) => activeItem.value = itemName;

  onHover(String itemName) {
    hoveringItem.value = itemName;
  }

  isActive(String itemName) => activeItem.value == itemName;

  isHovering(String itemName) => hoveringItem.value == itemName;

  changeMenuExpansion() => isExpanded.value = !isExpanded.value;

  Widget iconFor(String itemName) {
    switch (itemName) {
      case overviewPageDisplayName:
        return _customIcon(Icons.trending_up, itemName);
      case driversPageDisplayName:
        return _customIcon(Icons.drive_eta, itemName);
      case clientsPageDisplayName:
        return _customIcon(Icons.people_alt_outlined, itemName);
      case authenticationPageDisplayName:
        return _customIcon(Icons.exit_to_app, itemName);
      default:
        return _customIcon(Icons.exit_to_app, itemName);
    }
  }

  Widget _customIcon(IconData icon, String itemName) {
    return Icon(
      icon,
      size: 22,
      color: isActive(itemName) ? green : light,
    );
  }
}
