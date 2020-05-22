import 'dart:async';

import 'package:arkona_development/Infrastructure/core/Helper/AccountHelper.dart';
import 'package:arkona_development/Infrastructure/services/navigationService/locator.dart';
import 'package:arkona_development/Infrastructure/services/navigationService/navigationService.dart';
import 'package:arkona_development/Infrastructure/services/rest/RestService.dart';
import 'package:arkona_development/base/BaseViewModel.dart';
import 'package:arkona_development/infrastructure/constants/route_view.dart'
    as routes;
import 'package:arkona_development/main.dart';
import 'package:arkona_development/models/BottomBarItemModel.dart';

class DashboardViewModel extends BaseViewModel {
  NavigationService _navigationService;
  StreamSubscription _streamSubscription;
  DashboardViewModel(NavigationService navigationService) {
    _navigationService = navigationService;
    invoke(#items);
  }

  @override
  Future<void> active() async {
     var service = locator<RestService>();
     var result = await service.getNews();
     if(result != null){
       
     }
  }

  @override
  void deactive() {
    _streamSubscription.cancel();
  }

  @override
  void init() {
    _streamSubscription = ArkonaApp.subscriptionListener.subscribe.listen((value) {
      setTabNavigation(value);
    });
  }

  @override
  void registryProperties() {
    propertyValue(#nameScreen, initial: 'News');
  }

  void _changeScreenName(String name) {
    updateValue(#nameScreen, (nameScreen) {
      nameScreen = name;
      return true;
    });
  }

  int currentIndex = 0;
  bool isVisibleBottomBar = false;

  List<BottomBarItemModel> getBottomBar() {
    var list = List<BottomBarItemModel>();
    list.add(BottomBarItemModel("Test 1", '', BottomBarItemType.news));

    switch (AccountHelper.role) {
      case Role.none:
      case Role.guest:
        return list;
      case Role.user:
        return list;
      case Role.company:
        return list;
      default:
        return List<BottomBarItemModel>();
    }
  }

  void setTabNavigation(int newIndex) {
    currentIndex = newIndex;
  }

  bool setNavigation(int index) {
    if (!isVisibleBottomBar) return false;

    setTabNavigation(index);

    return true;
  }
}
