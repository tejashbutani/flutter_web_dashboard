import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/controllers.dart';
import 'package:flutter_web_dashboard/routing/router.dart';
import 'package:flutter_web_dashboard/routing/routes.dart';

Navigator localnavigator() => Navigator(
  key: navigationController.navigationKey,
  initialRoute: overviewPageRoute,
  onGenerateRoute: generateRoute,
);