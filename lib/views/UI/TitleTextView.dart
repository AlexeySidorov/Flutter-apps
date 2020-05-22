import 'package:arkona_development/Infrastructure/styles/textStyle.dart';
import 'package:flutter/cupertino.dart';

Widget titleTextWidget(String text, FlexFit flexFit, TextOverflow overflow) {
  return Flexible(
      fit: flexFit,
      child: Text(text,
          overflow: overflow, style: TextAppStyle.getTitleText16ColorStyle()));
}

Widget subTitleTextWidget(String text, FlexFit flexFit, TextOverflow overflow) {
  return Flexible(
      fit: flexFit,
      child: Text(text,
          overflow: overflow,
          style: TextAppStyle.getSubTitleText14ColorStyle()));
}
