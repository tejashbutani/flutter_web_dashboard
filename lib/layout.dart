import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/helpers/responsiveness.dart';
import 'package:flutter_web_dashboard/widgets/largeScreen.dart';
import 'package:flutter_web_dashboard/widgets/side_menu.dart';
import 'package:flutter_web_dashboard/widgets/smallScreen.dart';
import 'package:flutter_web_dashboard/widgets/top_nav_bar.dart';

class SiteLayout extends StatefulWidget {
  const SiteLayout({Key? key}) : super(key: key);

  @override
  State<SiteLayout> createState() => _SiteLayoutState();
}

class _SiteLayoutState extends State<SiteLayout> {

  final GlobalKey<ScaffoldState> key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      extendBodyBehindAppBar: true,
      appBar: topNavigationBar(context, key),
      drawer: const Drawer(child: SideMenu(),),
      body: ResponsiveWidget(largeScreen: const LargeScreen(), smallScreen: const SmallScreen(),),
    );
  }
}
