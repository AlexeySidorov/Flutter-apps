import 'package:arkona_development/base/BaseView.dart';
import 'package:arkona_development/viewModels/DashboardViewModel.dart';
import 'package:flutter/material.dart';

class DashboardView extends BaseView<DashboardViewModel> {
  DashboardView(DashboardViewModel model) : super(model);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pick an option'),
      ),
    );
  }
}
