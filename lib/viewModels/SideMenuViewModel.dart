import 'package:arkona_development/Infrastructure/core/Helper/AccountHelper.dart';
import 'package:arkona_development/Infrastructure/services/navigationService/locator.dart';
import 'package:arkona_development/Infrastructure/services/navigationService/navigationService.dart';
import 'package:arkona_development/base/BaseViewModel.dart';
import 'package:arkona_development/main.dart';
import 'package:arkona_development/models/MenuModel.dart';
import 'package:arkona_development/infrastructure/constants/route_view.dart'
    as routes;
import 'package:package_info/package_info.dart';
import 'dart:io' show Platform;

class SideMenuViewModel extends BaseViewModel {
  NavigationService _navigationService;

  SideMenuViewModel() {
    _navigationService = locator<NavigationService>();
    invoke(#items);
    invoke(#version);
  }

  Future _loginOrLogoutButton() async {
    return;
  }

  Future<String> _initPackageInfo() async {
    if (Platform.isAndroid || Platform.isIOS) {
      var info = await PackageInfo.fromPlatform();
      return 'Arkona Sport. All rights reserved(${info.version}.${info.buildNumber})';
    } else
      return 'Arkona Sport. All rights reserved';
  }

  @override
  void registryProperties() {
    propertyAsync(#login, () => _loginOrLogoutButton());
    propertyAsync<List<MenuModel>>(#items, () => _getMenu(),
        valueChanged: (v, k) => print("$k: ${v.data?.length}"), initial: []);
    propertyAsync(#version, () => _initPackageInfo());
  }

  Future<List<MenuModel>> _getMenu() async {
    var menuList = List<MenuModel>();
    menuList.add(MenuModel(
        'News', 'images/user_avatar_empty.png', MenuType.news));
    menuList.add(MenuModel(
        'Settings', 'images/user_avatar_empty.png', MenuType.settings));

    switch (AccountHelper.role) {
      case Role.none:
      case Role.guest:
        return menuList;
      case Role.user:
        return menuList;
      case Role.company:
        return menuList;
      default:
        return List<MenuModel>();
    }
  }

  void selectedMenuItem(MenuModel model) {
    switch (model.type) {
      case MenuType.news:
        ArkonaApp.subscriptionListener.publish(0);
        //  setNavigation(0);
        //_navigationService.navigateTo(routes.DashboardScreen);
        break;
      case MenuType.schedule:
        //_navigationService.navigateTo(routes.ScheduleScreen);
        break;
      case MenuType.trainers:
        _navigationService.navigateTo(routes.TrainersScreen);
        break;
      case MenuType.clients:
        //_navigationService.navigateTo(routes.ClientsScreen);
        break;
      case MenuType.settings:
        _navigationService.navigateTo(routes.SettingsScreen);
        break;
      default:
        break;
    }
  }

  ///Not use
  @override
  void active() {}

  ///Not use
  @override
  void deactive() {}

  ///Not use
  @override
  void init() {}
}
