import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/controllers.dart';
import 'package:flutter_web_dashboard/helpers/responsiveness.dart';
import 'package:flutter_web_dashboard/pages/drivers/widgets/driver_table.dart';
import 'package:flutter_web_dashboard/widgets/custom_trext.dart';
import 'package:get/get.dart';


class DriversPage extends StatelessWidget {
  const DriversPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        children: [
          Obx(() => Row(
            children: [
              Container(
                  margin: EdgeInsets.only(top:
                  ResponsiveWidget.isSmallScreen(_width) ? 56 : 6),
                  child: CustomText(text: sideMenuController.activeItem.value, size: 24, fontWeight: FontWeight.bold,)),
            ],
          ),),

          Expanded(child: ListView(
            children: [
              DriversTable()
            ],
          )),

        ],
      ),
    );
  }
}