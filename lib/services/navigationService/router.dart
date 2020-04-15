import 'package:arkona_development/services/navigationService/locator.dart';
import 'package:arkona_development/services/navigationService/navigationService.dart';
import 'package:arkona_development/viewModels/DashboardViewModel.dart';
import 'package:arkona_development/views/dashboardView.dart';
import 'package:flutter/material.dart';
import 'package:arkona_development/constants/route_view.dart' as routes;

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case routes.DashboardScreen:
      return MaterialPageRoute(builder: (context) => DashboardView(DashboardViewModel(locator<NavigationService>())));
    default:
      return MaterialPageRoute(
        builder: (context) => Scaffold(
          body: Center(
            child: Text('No path for ${settings.name}'),
          ),
        ),
      );
  }
}