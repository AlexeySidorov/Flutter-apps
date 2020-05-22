import 'package:arkona_development/Infrastructure/core/Helper/AccountHelper.dart';
import 'package:arkona_development/Infrastructure/styles/textStyle.dart';
import 'package:arkona_development/base/BaseView.dart';
import 'package:arkona_development/viewModels/SideMenuViewModel.dart';
import 'package:arkona_development/views/UI/TitleTextView.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuHeaderView extends BaseView<SideMenuViewModel> {
  MenuHeaderView(SideMenuViewModel viewModel) : super(viewModel);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
              width: 40,
              height: 40,
              child: CircleAvatar(
                  radius: 20,
                  backgroundImage: AccountHelper.avatarUser == null ||
                          AccountHelper.avatarUser.isEmpty
                      ? AssetImage("images/user_avatar_empty.png")
                      : CachedNetworkImage(
                          imageUrl: AccountHelper.avatarUser,
                          placeholder: (context, url) =>
                              CircularProgressIndicator(),
                          errorWidget: (context, url, error) =>
                              Icon(Icons.error),
                        ),
                  backgroundColor: Colors.transparent)),
          Expanded(
              child: Container(
                  margin: EdgeInsets.fromLTRB(12, 0, 12, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      titleTextWidget(AccountHelper.userName, FlexFit.loose,
                          TextOverflow.ellipsis),
                      subTitleTextWidget(AccountHelper.accountType,
                          FlexFit.loose, TextOverflow.ellipsis)
                    ],
                  ))),
          Container(
              width: 85,
              height: 35,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                child: Center(
                  child: Text('Login'.toUpperCase(),
                      style: TextAppStyle.getText14ColorWhiteStyle()),
                ),
                onPressed: $Model.link(#login, resetOnBefore: true),
              ))
        ],
      ),
    );
  }
}
