import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/gallery.dart';
import 'package:flutter_web_dashboard/constants/style.dart';
import 'package:flutter_web_dashboard/helpers/responsiveness.dart';
import 'package:flutter_web_dashboard/widgets/custom_trext.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) => AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(color: darkBlue),
      leading: !ResponsiveWidget.isSmallScreen(MediaQuery.of(context).size.width)
          ? Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 14),
                  child: Image.asset(
                    kIconLogo,
                    width: 28,
                  ),
                ),
              ],
            )
          : IconButton(
              onPressed: () {
                key.currentState?.openDrawer();
              },
              icon: Icon(
                Icons.menu,
                color: darkBlue,
              ),
            ),
      title: Row(
        children: [
          Visibility(
            child: CustomText(
              text: 'Dash',
              color: darkBlue,
              size: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          Expanded(child: Container()),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings,
              color: darkBlue,
            ),
          ),
          Stack(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications,
                  color: darkBlue,
                ),
              ),
              Positioned(
                top: 7,
                right: 7,
                child: Container(
                  height: 12,
                  width: 12,
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: green),
                ),
              )
            ],
          ),const SizedBox(
            width: 16,
          ),
          Container(
            height: 12,
            width: 1,
            color: darkBlue,
          ),
          const SizedBox(
            width: 24,
          ),
          CustomText(
            text: 'Joe Dory',
            color: darkBlue,
            size: 20,
            fontWeight: FontWeight.w600,
          ),
          const SizedBox(
            width: 16,
          ),
          CircleAvatar(
            backgroundColor: darkBlue,
            child: Icon(
              Icons.person,
              color: light,
            ),
          )
        ],
      ),
    );
