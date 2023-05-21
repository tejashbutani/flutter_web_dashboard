import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/controllers.dart';
import 'package:flutter_web_dashboard/constants/gallery.dart';
import 'package:flutter_web_dashboard/constants/style.dart';
import 'package:flutter_web_dashboard/helpers/responsiveness.dart';
import 'package:flutter_web_dashboard/pages/authentication/authentication.dart';
import 'package:flutter_web_dashboard/routing/routes.dart';
import 'package:flutter_web_dashboard/widgets/custom_trext.dart';
import 'package:flutter_web_dashboard/widgets/side_menu_item.dart';
import 'package:get/get.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
        color: darkBlue,
        child: ListView(
          children: [
            if (ResponsiveWidget.isSmallScreen(_width))
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 16,
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 12),
                        child: Image.asset(
                          kIconLogo,
                          width: 28,
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Flexible(
                        child: CustomText(
                          text: 'Dash',
                          color: green,
                          size: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Divider(
                    color: Colors.grey.shade300,
                  ),
                ],
              ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: sideMenuItemRoutes.map((item) => SideMenuItem(
                  itemName: item.name,
                  onTap: () {
                    if(item.route == authenticationPageRoute){
                      Get.offAllNamed(authenticationPageRoute);
                      sideMenuController.changeActiveItemTo(overviewPageDisplayName);

                    }
                    if (!sideMenuController.isActive(item.name)) {
                      sideMenuController.changeActiveItemTo(item.name);
                      navigationController.navigateTo(item.route);
                      if (ResponsiveWidget.isSmallScreen(_width)) {
                        Get.back();
                      }
                    }
                  })).toList(),
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
        if (!ResponsiveWidget.isSmallScreen(_width))
          Obx(() => Align(
         alignment: sideMenuController.isExpanded.value ? Alignment.bottomRight : Alignment.bottomCenter,
          child:  InkWell(
            onTap: () => sideMenuController.changeMenuExpansion(),
            onHover: (v) => sideMenuController.onHover(v ? 'expansion button' : ''),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16,16,16,24),
              child: Icon(
                  sideMenuController.isExpanded.value ? Icons.arrow_back_ios_rounded : Icons.arrow_forward_ios_rounded,
                  color: sideMenuController.hoveringItem.value == 'expansion button' ? Colors.white : Colors.white60,
                  size: 16,
                ),
            ),
          ),
        ),
          ),],
    );
  }
}
