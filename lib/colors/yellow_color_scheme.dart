import 'package:flutter/material.dart';
import 'package:practice_themes/colors/base_color_scheme.dart';

class YellowColorScheme implements BaseColorScheme {
  @override
  Color? get buttonColor => Colors.yellow[400];

  @override
  Color? get containerColor => Colors.yellow[300];

  @override
  Color? get textColor => Colors.yellow[200];

  @override
  Color? get circleAvatarColor => Colors.yellow[500];
}
