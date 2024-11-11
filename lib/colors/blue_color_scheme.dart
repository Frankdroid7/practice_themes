import 'package:flutter/material.dart';
import 'package:practice_themes/colors/base_color_scheme.dart';

class BlueColorScheme implements BaseColorScheme {
  @override
  Color? get buttonColor => Colors.blue[400];

  @override
  Color? get containerColor => Colors.blue[300];

  @override
  Color? get textColor => Colors.blue[200];

  @override
  Color? get circleAvatarColor => Colors.blue[500];
}
