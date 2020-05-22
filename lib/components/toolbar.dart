import 'package:arkona_development/Infrastructure/styles/textStyle.dart';
import 'package:flutter/material.dart';

class Toolbar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  TitleType titleType = TitleType.title;
  String title = "";
  String subTitle = "";
  ToolbarTitleStyle titleStyle;
  ImageInfo logoInfo;
  Color backgroundColor;

  Toolbar(
      {Key key,
      @required this.height,
      this.titleType,
      this.title,
      this.subTitle,
      this.titleStyle,
      this.logoInfo,
      this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: AppBar(
            title: getTitleContainer(),
            backgroundColor: backgroundColor,
            actions: [
              /* IconButton(
                icon: Icon(Icons.verified_user),
                onPressed: () => null,
              ),*/
            ],
          ),
        ),
      ],
    );
  }

  /// Title block
  Container getTitleContainer() {
    switch (titleType) {
      case TitleType.title:
        return Container(
            child: Text(title == null ? "" : title,
                style: getPrimaryTextStyle(true)));
      case TitleType.titleAndSubTitle:
        {
          return Container(
              child: Align(
            alignment: titleStyle == null || titleStyle.alignment == null
                ? Alignment.center
                : titleStyle.alignment,
            child: Column(
              children: <Widget>[
                Text(title == null ? "" : title,
                    style: getPrimaryTextStyle(titleStyle == null
                        ? true
                        : !titleStyle.primaryToSecond)),
                Text(subTitle == null ? "" : subTitle,
                    style: getSecondTextStyle(titleStyle == null
                        ? false
                        : titleStyle.primaryToSecond))
              ],
            ),
          ));
        }
      case TitleType.logo:
        {
          return Container(
              child: Center(
                  child: RawImage(
                      image: logoInfo?.image, scale: logoInfo?.scale ?? 1.0)));
        }
      default:
        return Container();
    }
  }

  @override
  Size get preferredSize => Size.fromHeight(height);

  TextStyle getPrimaryTextStyle(bool isPrimary) {
    return TextAppStyle.getToolbarTitleStyle(isPrimary);
  }

  TextStyle getSecondTextStyle(bool isPrimary) {
    return TextAppStyle.getToolbarSubTitleStyle(isPrimary);
  }

  void rebuildAllChildren(BuildContext context) {
    void rebuild(Element el) {
      el.markNeedsBuild();
      el.visitChildren(rebuild);
    }

    (context as Element).visitChildren(rebuild);
  }
}

class ToolbarTitleStyle {
  ToolbarTitleStyle({this.alignment, this.primaryToSecond});
  AlignmentGeometry alignment;
  bool primaryToSecond;
}

enum TitleType { logo, title, titleAndSubTitle }
