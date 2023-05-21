import 'package:flutter/material.dart';

const int largeScreenSize = 1366;
const int mediumScreenSize = 768;
const int smallScreenSize = 360;
const int customScreenSize = 1100;

class ResponsiveWidget extends StatelessWidget {
  final Widget largeScreen;
  Widget? mediumScreen;
  Widget? smallScreen;
  ResponsiveWidget({Key? key, required this.largeScreen, this.mediumScreen, this.smallScreen}) : super(key: key);
  
  static bool isSmallScreen(double width) =>
      width < mediumScreenSize;

  static bool isMediumScreen(double width) =>
      width >= mediumScreenSize &&
      width < largeScreenSize;

  static bool isLargeScreen(double width) =>
      width >= largeScreenSize;

  static bool isCustomSize(double width) =>
      width >= mediumScreenSize && width <= customScreenSize;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints){
      double _width = constraints.maxWidth;
      if(isLargeScreen(_width)){
        return largeScreen;
      } else if(isMediumScreen(_width)){
        return mediumScreen ?? largeScreen;
      } else {
        return smallScreen ?? largeScreen;
      }
    });
  }
}
