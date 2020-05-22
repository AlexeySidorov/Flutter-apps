import 'package:arkona_development/Infrastructure/services/navigationService/locator.dart';
import 'package:arkona_development/Infrastructure/services/navigationService/navigationService.dart';
import 'package:arkona_development/viewModels/DashboardViewModel.dart';
import 'package:arkona_development/viewModels/DetailsViewModel.dart';
import 'package:arkona_development/viewModels/SettingsViewModel.dart';
import 'package:arkona_development/viewModels/TrainersViewModel.dart';
import 'package:arkona_development/views/DetailsView.dart';
import 'package:arkona_development/views/SettingsView.dart';
import 'package:arkona_development/views/TrainersView.dart';
import 'package:arkona_development/views/dashboardView.dart';
import 'package:flutter/material.dart';
import 'package:arkona_development/Infrastructure/constants/route_view.dart'
    as routes;

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case routes.DashboardScreen:
      return MaterialPageRoute(
          builder: (context) =>
              DashboardView(DashboardViewModel(locator<NavigationService>())));
    case routes.DetailsScreen:
      return MaterialPageRoute(
          builder: (context) =>
              DetailsView(DetailsViewModel(locator<NavigationService>())));
    case routes.SettingsScreen:
      return MaterialPageRoute(
          builder: (context) => SettingsView(SettingsViewModel()));
    case routes.TrainersScreen:
      return MaterialPageRoute(
          builder: (context) => TrainersView(TrainersViewModel()));
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
