import 'package:arkona_development/base/BaseViewModel.dart';
import 'package:arkona_development/services/navigationService/navigationService.dart';

class DashboardViewModel extends BaseViewModel {
  NavigationService _navigationService;
  DashboardViewModel(NavigationService navigationService) {
    _navigationService = navigationService;
  }

  @override
  void active() {
    
  }

  @override
  void deactive() {}

  @override
  void init() {}

  @override
  void data(Object data) {}
}
