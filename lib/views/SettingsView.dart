import 'package:arkona_development/base/BaseView.dart';
import 'package:arkona_development/components/toolbar.dart';
import 'package:arkona_development/viewModels/SettingsViewModel.dart';
import 'package:arkona_development/views/SideMenuView.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class SettingsView extends BaseView<SettingsViewModel> {
  SettingsView(SettingsViewModel model) : super(model);

  @override
  Widget build(BuildContext context) {
    return kIsWeb
        ? Scaffold(
            drawer: SideMenuView(),
            appBar: Toolbar(height: 150),
          )
        : Scaffold(
            appBar: Toolbar(height: 150),
          );
  }
}
