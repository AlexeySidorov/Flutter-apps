import 'package:arkona_development/Infrastructure/styles/color.dart';
import 'package:arkona_development/Infrastructure/styles/textStyle.dart';
import 'package:arkona_development/base/BaseView.dart';
import 'package:arkona_development/models/MenuModel.dart';
import 'package:arkona_development/viewModels/SideMenuViewModel.dart';
import 'package:arkona_development/views/UI/MenuHeaderView.dart';
import 'package:flutter/material.dart';

class SideMenuView extends BaseView<SideMenuViewModel> {
  SideMenuView() : super(SideMenuViewModel());

  @override
  State<StatefulWidget> createState() {
    return _SideMenuViewState(SideMenuViewModel());
  }

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}

class _SideMenuViewState extends State<SideMenuView> {
  final SideMenuViewModel _menuViewModel;
  _SideMenuViewState(this._menuViewModel);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(children: <Widget>[
      Container(
          child: DrawerHeader(
              margin: EdgeInsets.all(0),
              padding: EdgeInsets.fromLTRB(30, 50, 18, 49),
              child: MenuHeaderView(_menuViewModel))),
      Divider(height: 1, color: ThemeMobileColor.dividerColor),
      Expanded(
          child: widget.$.watchFor<AsyncSnapshot<List<MenuModel>>>(#items,
              builder: widget.$.builder1((items) => ListView(
                  children: items.data
                      ?.map((item) => Column(children: <Widget>[
                            ListTile(
                                leading: Container(
                                    child: Image.asset(item.iconUrl),
                                    width: 24,
                                    height: 24,
                                    margin: EdgeInsets.fromLTRB(20, 0, 0, 0)),
                                title: Text(
                                  '${item.title}',
                                  style:
                                      TextAppStyle.getText14ColorBlackStyle(),
                                ),
                                onTap: () =>
                                    widget.$Model.selectedMenuItem(item)),
                            Container(
                                margin: EdgeInsets.fromLTRB(35, 0, 0, 0),
                                child: Divider(
                                    height: 1,
                                    color: ThemeMobileColor.dividerColor))
                          ]))
                      ?.toList())))),
      Container(
          // This align moves the children to the bottom
          child: Align(
              alignment: FractionalOffset.bottomCenter,
              // This container holds all the children that will be aligned
              // on the bottom and should not scroll with the above ListView
              child: Container(
                  child: Column(
                children: <Widget>[
                  ListTile(
                      leading: Container(
                          child: Image.asset('images/user_avatar_empty.png'),
                          width: 24,
                          height: 24,
                          margin: EdgeInsets.fromLTRB(20, 0, 0, 0)),
                      title: Text('Settings',
                          style: TextAppStyle.getText14ColorBlackStyle())),
                  Divider(height: 1, color: ThemeMobileColor.dividerColor),
                  widget.$.watchFor<AsyncSnapshot<String>>(#version,
                      builder: widget.$.builder1((value) => ListTile(
                          title: Text(value.data,
                              style: TextAppStyle.getText12ColorBlackStyle(),
                              overflow: TextOverflow.ellipsis))))
                ],
              ))))
    ]));
  }
}
