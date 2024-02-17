import 'package:flutter/material.dart';
import '../core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: appTheme.teal900,
                  borderRadius: BorderRadius.circular(5.h),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get outlineDeepOrangeC => BoxDecoration(
        color: appTheme.whiteA70002,
        borderRadius: BorderRadius.circular(18.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.deepOrange2004c,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get fillTeal => BoxDecoration(
        color: appTheme.teal900,
        borderRadius: BorderRadius.circular(17.h),
      );
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black90002,
        borderRadius: BorderRadius.circular(17.h),
      );
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: appTheme.whiteA70002,
        borderRadius: BorderRadius.circular(25.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90002.withOpacity(0.04),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineWhiteA => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(12.h),
        border: Border.all(
          color: appTheme.whiteA70002,
          width: 2.h,
        ),
      );
  static BoxDecoration get outlineWhiteATL12 => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(12.h),
        border: Border.all(
          color: appTheme.whiteA70002,
          width: 2.h,
        ),
      );
}
