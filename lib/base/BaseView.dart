import 'package:arkona_development/base/BaseViewModel.dart';
import 'package:flutter/widgets.dart';
import 'package:mvvm/mvvm.dart';

abstract class BaseView<T extends BaseViewModel> extends View<T> {
  BaseView(T model) : super(model);

  @override
  void dispose() {
    super.dispose();
    $Model?.deactive();
  }

  @override
  void init(BuildContext context) {
    super.init(context);
    $Model?.init();
  }

  @override
  void ready(BuildContext context) {
    super.ready(context);
    $Model?.active();
  }
}