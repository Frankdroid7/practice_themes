import 'package:flutter/material.dart';
import 'package:practice_themes/colors/base_color_scheme.dart';

class PinkColorScheme implements BaseColorScheme {
  @override
  Color? get buttonColor => Colors.pink[400];

  @override
  Color? get containerColor => Colors.pink[300];

  @override
  Color? get textColor => Colors.pink[200];

  @override
  Color? get circleAvatarColor => Colors.pink[500];
}
