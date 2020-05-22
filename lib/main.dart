import 'package:arkona_development/Infrastructure/core/SubscriptionModel.dart';
import 'package:arkona_development/Infrastructure/services/navigationService/locator.dart';
import 'package:arkona_development/Infrastructure/services/navigationService/router.dart'
    as router;
import 'package:arkona_development/Infrastructure/constants/route_view.dart'
    as routes;
import 'package:arkona_development/Infrastructure/services/navigationService/navigationService.dart';
import 'package:arkona_development/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  setupLocator();
  runApp(ArkonaApp());
}

class ArkonaApp extends StatelessWidget {
  static SubscriptionModel subscriptionListener = SubscriptionModel();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Settings.getThemeApp(),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: [
        Locale.fromSubtags(languageCode: 'en'),
        Locale.fromSubtags(languageCode: 'ru')
      ],
      navigatorKey: locator<NavigationService>().navigatorKey,
      onGenerateRoute: router.generateRoute,
      initialRoute: routes.DashboardScreen,
    );
  }
}