import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/style.dart';
import 'package:flutter_web_dashboard/helpers/responsiveness.dart';
import 'package:flutter_web_dashboard/widgets/custom_trext.dart';
import 'package:get/get.dart';
import 'package:flutter_web_dashboard/constants/controllers.dart';

class SideMenuItem extends StatelessWidget {
  final String itemName;
  final Function onTap;
  const SideMenuItem({Key? key, required this.itemName, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () => onTap(),
      onHover: (value) => sideMenuController.onHover(value ? itemName : ''),
      child: Obx(() => Container(
        color: sideMenuController.isHovering(itemName) ? Colors.white10 : Colors.transparent,
        child: Row(
          children: [
            Visibility(
              visible: sideMenuController.isActive(itemName),
              maintainSize: true,
              maintainAnimation: true,
              maintainState: true,
              child: Container(
                width: 6,
                height: 40,
                color: green,
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: sideMenuController.iconFor(itemName),
            ),
              !ResponsiveWidget.isSmallScreen(_width) && !sideMenuController.isExpanded.value ? SizedBox.shrink() : Flexible(
              child: CustomText(
                text: itemName,
                size: 18,
                fontWeight: FontWeight.w500,
                color: sideMenuController.isActive(itemName) ? green : light,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
