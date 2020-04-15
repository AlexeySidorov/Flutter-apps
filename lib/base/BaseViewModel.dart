import 'package:mvvm/mvvm.dart';

abstract class BaseViewModel extends ViewModel {
  ///Init the view
  void init();

  ///The view is onStart/onResume
  void active();

  ///The view is onPause/onDisposed
  void deactive();
}
