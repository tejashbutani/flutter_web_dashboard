import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/controllers.dart';
import 'package:flutter_web_dashboard/helpers/responsiveness.dart';
import 'package:flutter_web_dashboard/pages/clients/widgets/clients_table.dart';
import 'package:flutter_web_dashboard/widgets/custom_trext.dart';
import 'package:get/get.dart';


class ClientsPage extends StatelessWidget {
  const ClientsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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

        Expanded(child: ListView(
          children: [
            ClientsTable(),
          ],
        )),
      ],
    );
  }
}