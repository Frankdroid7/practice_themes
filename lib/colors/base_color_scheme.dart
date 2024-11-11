import 'package:flutter/material.dart';
import 'package:practice_themes/colors/blue_color_scheme.dart';
import 'package:practice_themes/colors/pink_color_scheme.dart';
import 'package:practice_themes/colors/yellow_color_scheme.dart';

abstract class BaseColorScheme {
  Color? get textColor;
  Color? get buttonColor;
  Color? get containerColor;
  Color? get circleAvatarColor;
}

enum BaseColorSchemeEnum { pink, blue, yellow }

Map<BaseColorSchemeEnum, BaseColorScheme> baseColorMap = {
  BaseColorSchemeEnum.pink: PinkColorScheme(),
  BaseColorSchemeEnum.blue: BlueColorScheme(),
  BaseColorSchemeEnum.yellow: YellowColorScheme(),
};
