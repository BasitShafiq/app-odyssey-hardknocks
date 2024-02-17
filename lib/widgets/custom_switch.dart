import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../core/app_export.dart';

class CustomSwitch extends StatelessWidget {
  CustomSwitch({
    Key? key,
    required this.onChange,
    this.alignment,
    this.value,
    this.width,
    this.height,
    this.margin,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  bool? value;

  final Function(bool) onChange;

  final double? width;

  final double? height;

  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        margin: margin,
        child: alignment != null
            ? Align(
                alignment: alignment ?? Alignment.center,
                child: switchWidget,
              )
            : switchWidget);
  }

  Widget get switchWidget => CupertinoSwitch(
        value: value ?? false,
        trackColor: appTheme.teal900,
        thumbColor:
            (value ?? false) ? appTheme.whiteA70002 : appTheme.whiteA70002,
        activeColor: appTheme.teal900,
        onChanged: (value) {
          onChange(value);
        },
      );
}
