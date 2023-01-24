import 'package:flutter/material.dart';
import '../Const/colors.dart';
import '../Const/dimens.dart';

class EasyTextWidget extends StatelessWidget {
  const EasyTextWidget(
      {Key? key,
        required this.text,
        this.fontSize = kFontSize14x,
        this.color = kGreyColor,
        this.fontWeight = FontWeight.w600})
      : super(key: key);
  final String text;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
      TextStyle(fontWeight: fontWeight, fontSize: fontSize, color: color),
    );
  }
}