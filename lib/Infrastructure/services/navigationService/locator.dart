import 'package:arkona_development/Infrastructure/services/navigationService/navigationService.dart';
import 'package:arkona_development/Infrastructure/services/rest/RestService.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => RestService());
}