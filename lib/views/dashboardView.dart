import 'package:arkona_development/Infrastructure/styles/color.dart';
import 'package:arkona_development/Infrastructure/styles/textStyle.dart';
import 'package:arkona_development/base/BaseView.dart';
import 'package:arkona_development/viewModels/DashboardViewModel.dart';
import 'package:arkona_development/views/SideMenuView.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class DashboardView extends BaseView<DashboardViewModel> {
  DashboardView(DashboardViewModel model) : super(model);

  @override
  Widget build(BuildContext context) {
    return !kIsWeb
        ? Scaffold(
            drawer: SideMenuView(),
            appBar: AppBar(
                title: $.watchFor<String>(#nameScreen,
                    builder: $.builder1((name) => Text(name,
                        style: TextAppStyle.getToolbarTitleStyle(true)))),
                backgroundColor: ThemeMobileColor.toolbarBackground),
            bottomNavigationBar: $Model.isVisibleBottomBar
                ? BottomNavigationBar(
                    onTap: (newIndex) =>
                        setState(() => $Model.setTabNavigation(newIndex)),
                    currentIndex: $Model.currentIndex,
                    items: $Model
                        .getBottomBar()
                        .map((e) => BottomNavigationBarItem(
                            title: Text(e.title), icon: Image.asset(e.iconUrl)))
                        .toList(),
                  )
                : null,
          )
        : Scaffold(
            appBar: AppBar(
              backgroundColor: ThemeWebColor.toolbarBackground,
              actions: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                      padding: EdgeInsets.only(left: 6, right: 6),
                      child: Text("",
                          style: TextAppStyle.getWebMenuText14BoldStyle())),
                ),

                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                      padding: EdgeInsets.only(left: 6, right: 6),
                      child: Text("Клиентам",
                          style: TextAppStyle.getWebMenuText14BoldStyle())),
                ),

                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                      padding: EdgeInsets.only(left: 6, right: 6),
                      child: Text("Контакты",
                          style: TextAppStyle.getWebMenuText14BoldStyle())),
                ),

                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                      padding: EdgeInsets.only(left: 6, right: 40),
                      child: Text("О нас",
                          style: TextAppStyle.getWebMenuText14BoldStyle())),
                ),

                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                      padding: EdgeInsets.only(left: 12, right: 12),
                      child: Text("Вход/Регистрация",
                          style: TextAppStyle.getWebMenuText14BoldStyle())),
                )
                //Aling(
                //child: ),
                // Text("Контакты", style: TextAppStyle.getWebMenuText16Style()),q
                //Text("Вход/Регистрация",
                //   style: TextAppStyle.getWebMenuText16Style()),
                //Text("O нас", style: TextAppStyle.getWebMenuText16Style()),
              ],
            ),
          );
  }
}
