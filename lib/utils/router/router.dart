import 'package:credpaltest/ui/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:credpaltest/utils/router/route_names.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {

    case homeRoute:
      return _getPageRoute(
        routeName: settings.name!,
        viewToShow: const Home(),
      );

    default:
      return MaterialPageRoute(
          builder: (_) => Scaffold(
                body: Center(
                    child: Text('No route defined for ${settings.name}')),
              ));
  }
}

PageRoute _getPageRoute({required String routeName, required Widget viewToShow}) {
  return MaterialPageRoute(
      settings: RouteSettings(
        name: routeName,
      ),
      builder: (_) => viewToShow);
}
