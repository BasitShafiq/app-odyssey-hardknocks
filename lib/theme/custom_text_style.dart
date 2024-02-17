import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBluegray80002 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray80002,
      );
  static get bodyLargeBluegray90001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray90001.withOpacity(0.53),
      );
  static get bodyLargeBluegray90001_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray90001.withOpacity(0.67),
      );
  static get bodyMediumBlack90002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black90002,
      );
  static get bodyMediumBlack90002Light => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black90002,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumBlack90002_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black90002.withOpacity(0.7),
      );
  static get bodyMediumBlack90002_2 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black90002.withOpacity(0.38),
      );
  static get bodyMediumBluegray80002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray80002,
      );
  static get bodyMediumBluegray90099 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray90099,
        fontSize: 15.fSize,
      );
  static get bodyMediumErrorContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get bodyMediumGray50001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray50001,
      );
  static get bodyMediumGray800 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray800.withOpacity(0.46),
      );
  static get bodyMediumPoppinsBlack90002 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.black90002.withOpacity(0.8),
      );
  static get bodyMediumSecondaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.secondaryContainer,
      );
  static get bodyMediumSenBluegray30002 =>
      theme.textTheme.bodyMedium!.sen.copyWith(
        color: appTheme.blueGray30002,
      );
  static get bodySmallBlack90002 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black90002.withOpacity(0.6),
        fontSize: 8.fSize,
      );
  static get bodySmallBlack9000210 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black90002,
        fontSize: 10.fSize,
      );
  static get bodySmallBlack90002_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black90002.withOpacity(0.53),
      );
  static get bodySmallBlack90002_2 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black90002.withOpacity(0.38),
      );
  static get bodySmallBluegray50 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray50,
      );
  static get bodySmallGray60001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray60001,
      );
  static get bodySmallNunitoGreenA700 =>
      theme.textTheme.bodySmall!.nunito.copyWith(
        color: appTheme.greenA700,
      );
  static get bodySmallNunitoTeal900 =>
      theme.textTheme.bodySmall!.nunito.copyWith(
        color: appTheme.teal900,
      );
  static get bodySmallPurple700a2 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.purple700A2,
      );
  static get bodySmallSenGray60002 => theme.textTheme.bodySmall!.sen.copyWith(
        color: appTheme.gray60002,
      );
  static get bodySmallTeal900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.teal900,
      );
  // Headline text style
  static get headlineMediumBlack90002 =>
      theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.black90002,
        fontSize: 26.fSize,
        fontWeight: FontWeight.w800,
      );
  static get headlineMediumBluegray800 =>
      theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.blueGray800,
        fontSize: 26.fSize,
      );
  static get headlineMediumBluegray80002 =>
      theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.blueGray80002,
        fontWeight: FontWeight.w600,
      );
  static get headlineMediumTeal900 => theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.teal900,
        fontSize: 26.fSize,
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallBlack90002 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black90002.withOpacity(0.6),
      );
  static get headlineSmallBluegray800 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.blueGray800,
      );
  static get headlineSmallPrimary => theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  // Label text style
  static get labelLargeBluegray300 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray300,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeManrope => theme.textTheme.labelLarge!.manrope;
  static get labelLargeManropeBlack90002 =>
      theme.textTheme.labelLarge!.manrope.copyWith(
        color: appTheme.black90002.withOpacity(0.64),
      );
  static get labelLargeManropeBlack90002Medium =>
      theme.textTheme.labelLarge!.manrope.copyWith(
        color: appTheme.black90002.withOpacity(0.53),
        fontWeight: FontWeight.w500,
      );
  static get labelLargeManropeBlack90002Medium_1 =>
      theme.textTheme.labelLarge!.manrope.copyWith(
        color: appTheme.black90002.withOpacity(0.56),
        fontWeight: FontWeight.w500,
      );
  static get labelLargeManropeBluegray300 =>
      theme.textTheme.labelLarge!.manrope.copyWith(
        color: appTheme.blueGray300,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeManropePrimary =>
      theme.textTheme.labelLarge!.manrope.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelLargeManropeTeal900 =>
      theme.textTheme.labelLarge!.manrope.copyWith(
        color: appTheme.teal900,
        fontWeight: FontWeight.w800,
      );
  static get labelLargeManropeTeal900Medium =>
      theme.textTheme.labelLarge!.manrope.copyWith(
        color: appTheme.teal900,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeManropeWhiteA70002 =>
      theme.textTheme.labelLarge!.manrope.copyWith(
        color: appTheme.whiteA70002,
      );
  static get labelLargePoppinsWhiteA70002 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.whiteA70002,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumManropeBlack90002 =>
      theme.textTheme.labelMedium!.manrope.copyWith(
        color: appTheme.black90002.withOpacity(0.56),
        fontSize: 10.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumManropeBlack90002Bold =>
      theme.textTheme.labelMedium!.manrope.copyWith(
        color: appTheme.black90002.withOpacity(0.53),
        fontSize: 10.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumManropeBlack90002Medium =>
      theme.textTheme.labelMedium!.manrope.copyWith(
        color: appTheme.black90002.withOpacity(0.53),
        fontSize: 10.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumManropeBluegray400 =>
      theme.textTheme.labelMedium!.manrope.copyWith(
        color: appTheme.blueGray400,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumManropeGray50002 =>
      theme.textTheme.labelMedium!.manrope.copyWith(
        color: appTheme.gray50002,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumManropeOnError =>
      theme.textTheme.labelMedium!.manrope.copyWith(
        color: theme.colorScheme.onError,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumManropeTeal900 =>
      theme.textTheme.labelMedium!.manrope.copyWith(
        color: appTheme.teal900,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumManropeWhiteA70002 =>
      theme.textTheme.labelMedium!.manrope.copyWith(
        color: appTheme.whiteA70002,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumWhiteA70002 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.whiteA70002,
      );
  static get labelSmallManropeWhiteA70002 =>
      theme.textTheme.labelSmall!.manrope.copyWith(
        color: appTheme.whiteA70002,
        fontWeight: FontWeight.w800,
      );
  // Poppins text style
  static get poppinsWhiteA70002 => TextStyle(
        color: appTheme.whiteA70002,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w500,
      ).poppins;
  // Title text style
  static get titleLargeInterBlack90002 =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: appTheme.black90002,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeInterBlack90002SemiBold =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: appTheme.black90002,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeManropeBlack90002 =>
      theme.textTheme.titleLarge!.manrope.copyWith(
        color: appTheme.black90002.withOpacity(0.6),
        fontSize: 20.fSize,
      );
  static get titleLargeManropeBluegray800 =>
      theme.textTheme.titleLarge!.manrope.copyWith(
        color: appTheme.blueGray800,
        fontSize: 20.fSize,
      );
  static get titleLargeManropeBluegray80002 =>
      theme.textTheme.titleLarge!.manrope.copyWith(
        color: appTheme.blueGray80002,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeManropeWhiteA70002 =>
      theme.textTheme.titleLarge!.manrope.copyWith(
        color: appTheme.whiteA70002,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w800,
      );
  static get titleLargeff004422 => theme.textTheme.titleLarge!.copyWith(
        color: Color(0XFF004422),
        fontWeight: FontWeight.w600,
      );
  static get titleLargeff009944 => theme.textTheme.titleLarge!.copyWith(
        color: Color(0XFF009944),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBlack90002 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90002,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBlack9000218 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90002.withOpacity(0.64),
        fontSize: 18.fSize,
      );
  static get titleMediumBlack90002ExtraBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90002,
        fontWeight: FontWeight.w800,
      );
  static get titleMediumBlack90002_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90002.withOpacity(0.64),
      );
  static get titleMediumBlueA400 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueA400,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBluegray10001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray10001,
      );
  static get titleMediumBluegray90001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray90001,
      );
  static get titleMediumGray700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGray90099 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90099,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumInterBlack90002 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.black90002.withOpacity(0.5),
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumInterBlack90002Medium =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.black90002.withOpacity(0.5),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumInterBlack90002SemiBold =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.black90002,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOnSecondaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPoppinsBlack90002 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.black90002.withOpacity(0.6),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPoppinsBlack90002Medium =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.black90002.withOpacity(0.8),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPoppinsBlueA400 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.blueA400,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 19.fSize,
      );
  static get titleMediumPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 18.fSize,
      );
  static get titleMediumSemiBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumTeal900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.teal900,
        fontSize: 19.fSize,
        fontWeight: FontWeight.w800,
      );
  static get titleMediumTeal900ExtraBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.teal900,
        fontWeight: FontWeight.w800,
      );
  static get titleMediumWhiteA70001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA70001,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w800,
      );
  static get titleMediumWhiteA70002 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA70002,
        fontWeight: FontWeight.w800,
      );
  static get titleSmallBlack90001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black90001,
      );
  static get titleSmallBlack90002 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black90002,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBlack90002Bold => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black90002.withOpacity(0.6),
        fontSize: 14.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallBlack90002Bold_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black90002.withOpacity(0.64),
        fontWeight: FontWeight.w700,
      );
  static get titleSmallBlack90002Medium => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black90002,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallGray800 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray800.withOpacity(0.46),
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallGray800Medium => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray800,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallInterBlack90002 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.black90002.withOpacity(0.5),
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallInterBlack90002Medium =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.black90002.withOpacity(0.5),
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallNunitoPrimary =>
      theme.textTheme.titleSmall!.nunito.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallPoppinsBlack90002 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.black90002,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallPrimaryBold => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallPrimaryContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallRed300 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.red300,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallSenPrimary => theme.textTheme.titleSmall!.sen.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallTeal900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.teal900,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w800,
      );
  static get titleSmallWhiteA70001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA70001,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w800,
      );
  static get titleSmallWhiteA70001Medium =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA70001,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallWhiteA70002 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA70002.withOpacity(0.9),
        fontSize: 14.fSize,
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get sen {
    return copyWith(
      fontFamily: 'Sen',
    );
  }

  TextStyle get manrope {
    return copyWith(
      fontFamily: 'Manrope',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get nunito {
    return copyWith(
      fontFamily: 'Nunito',
    );
  }
}
