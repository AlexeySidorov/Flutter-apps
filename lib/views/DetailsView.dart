import 'package:arkona_development/base/BaseView.dart';
import 'package:arkona_development/components/toolbar.dart';
import 'package:arkona_development/viewModels/DetailsViewModel.dart';
import 'package:arkona_development/views/SideMenuView.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class DetailsView extends BaseView<DetailsViewModel> {
  DetailsView(DetailsViewModel model) : super(model);

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
