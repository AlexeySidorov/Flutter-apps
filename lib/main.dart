import 'package:arkona_development/services/navigationService/locator.dart';
import 'package:arkona_development/services/navigationService/router.dart'
    as router;
import 'package:arkona_development/constants/route_view.dart' as routes;
import 'package:arkona_development/services/navigationService/navigationService.dart';
import 'package:flutter/material.dart';

void main() {
  setupLocator();
  runApp(ArkonaApp());
}

class ArkonaApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      navigatorKey: locator<NavigationService>().navigatorKey,
      onGenerateRoute: router.generateRoute,
      initialRoute: routes.DashboardScreen,
    );
  }
}
