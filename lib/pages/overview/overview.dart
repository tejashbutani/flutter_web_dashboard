import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/controllers.dart';
import 'package:flutter_web_dashboard/helpers/responsiveness.dart';
import 'package:flutter_web_dashboard/pages/overview/available_drivers_table.dart';
import 'package:flutter_web_dashboard/pages/overview/overview_cards_large.dart';
import 'package:flutter_web_dashboard/pages/overview/overview_cards_medium.dart';
import 'package:flutter_web_dashboard/pages/overview/overview_cards_small.dart';
import 'package:flutter_web_dashboard/pages/overview/revenue_section_large.dart';
import 'package:flutter_web_dashboard/pages/overview/revenue_section_small.dart';
import 'package:flutter_web_dashboard/widgets/custom_trext.dart';
import 'package:get/get.dart';

class OverViewPage extends StatelessWidget {
  const OverViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Obx(
          () => Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: ResponsiveWidget.isSmallScreen(MediaQuery.of(context).size.width) ? 56 : 16,
                    left: ResponsiveWidget.isSmallScreen(MediaQuery.of(context).size.width) ? 2 : 16),
                child: CustomText(
                  text: sideMenuController.activeItem.value,
                  size: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Expanded(
            child: ListView(
          children: [
            if (ResponsiveWidget.isLargeScreen(_width) || ResponsiveWidget.isMediumScreen(_width))
              if (ResponsiveWidget.isCustomSize(_width)) OverViewCardsMediumScreens() else OverviewCardsLargeScreen()
            else
              OverviewCardsSmallScreen(),
            if (ResponsiveWidget.isSmallScreen(_width)) RevenueSectionSmall() else RevenueSectionLarge(),
            AvailableDriversTable()
          ],
        ))
      ],
    );
  }
}
