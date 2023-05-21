import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/pages/authentication/authentication.dart';
import 'package:flutter_web_dashboard/pages/clients/clients.dart';
import 'package:flutter_web_dashboard/pages/drivers/drivers.dart';
import 'package:flutter_web_dashboard/pages/overview/overview.dart';
import 'package:flutter_web_dashboard/routing/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings){
  switch (settings.name) {
    case overviewPageRoute:
      return _pageRoute(const OverViewPage());
    case driversPageRoute:
      return _pageRoute(const DriversPage());
    case clientsPageRoute:
      return _pageRoute(const ClientsPage());
    case authenticationPageRoute:
      return _pageRoute(const AuthenticationPage());
    default:
      return _pageRoute(const OverViewPage());
  }
}

PageRoute _pageRoute(Widget child){
  return MaterialPageRoute(builder: (context) => child);
}