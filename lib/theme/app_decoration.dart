import 'package:flutter/material.dart';
import 'package:arest/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray300,
      );
  static BoxDecoration get fillGray10001 => BoxDecoration(
        color: appTheme.gray10001,
      );
  static BoxDecoration get fillGray10002 => BoxDecoration(
        color: appTheme.gray10002,
      );
  static BoxDecoration get fillGray200 => BoxDecoration(
        color: appTheme.gray200,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA70002,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: appTheme.whiteA700,
      );

  // Gradient decorations
  static BoxDecoration get gradientGreenToGreen => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0.5),
          end: Alignment(0.51, 2),
          colors: [
            appTheme.green200,
            appTheme.green200.withOpacity(0),
          ],
        ),
      );
  static BoxDecoration get gradientTealToTeal => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.03, -0.24),
          end: Alignment(1, 1.41),
          colors: [
            appTheme.teal900,
            appTheme.teal50,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: appTheme.whiteA70002,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90002.withOpacity(0.1),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack90002 => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90002.withOpacity(0.1),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900021 => BoxDecoration(
        color: appTheme.whiteA70002,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90002.withOpacity(0.05),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900022 => BoxDecoration();
  static BoxDecoration get outlineBlack900023 => BoxDecoration(
        color: appTheme.gray300,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90002.withOpacity(0.1),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900024 => BoxDecoration(
        color: appTheme.whiteA70002,
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
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: appTheme.whiteA70002,
        border: Border.all(
          color: appTheme.blueGray10001,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90002.withOpacity(0.02),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlueGrayC => BoxDecoration(
        color: appTheme.whiteA70002,
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray1004c,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineIndigoA => BoxDecoration(
        color: appTheme.whiteA70002,
        boxShadow: [
          BoxShadow(
            color: appTheme.indigoA20011,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              12.48,
              27.04,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineIndigoA20011 => BoxDecoration(
        color: appTheme.teal900,
        boxShadow: [
          BoxShadow(
            color: appTheme.indigoA20011,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              12.48,
              27.04,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineLightBlueAD => BoxDecoration(
        color: theme.colorScheme.primary,
        boxShadow: [
          BoxShadow(
            color: appTheme.lightBlueA2003d,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              10.4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePrimary => BoxDecoration(
        color: appTheme.whiteA70002,
        border: Border.all(
          color: theme.colorScheme.primary.withOpacity(0.1),
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90002.withOpacity(0.02),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePrimary1 => BoxDecoration(
        color: appTheme.whiteA70002,
        border: Border.all(
          color: theme.colorScheme.primary.withOpacity(0.1),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimary2 => BoxDecoration(
        color: appTheme.whiteA70002,
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90002.withOpacity(0.02),
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
        color: appTheme.redA200,
        border: Border.all(
          color: appTheme.whiteA70002,
          width: 1.h,
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder16 => BorderRadius.circular(
        16.h,
      );
  static BorderRadius get circleBorder52 => BorderRadius.circular(
        52.h,
      );
  static BorderRadius get circleBorder62 => BorderRadius.circular(
        62.h,
      );

  // Rounded borders
  static BorderRadius get roundedBorder12 => BorderRadius.circular(
        12.h,
      );
  static BorderRadius get roundedBorder42 => BorderRadius.circular(
        42.h,
      );
  static BorderRadius get roundedBorder5 => BorderRadius.circular(
        5.h,
      );
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        8.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.
    
// For Flutter SDK Version 3.7.2 or greater.
    
double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
    