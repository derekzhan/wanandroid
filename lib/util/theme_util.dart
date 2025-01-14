import 'package:flutter/material.dart';

/// 主题
class ThemeUtils {
  // 默认主题色
  static const Color defaultColor = Colors.redAccent;

  // 可选的主题色
  static const List<Color> supportColors = [
    const Color(0xFF5394FF),
    Colors.purple,
    Colors.orange,
    Colors.deepPurpleAccent,
    Colors.redAccent,
    Colors.blue,
    Colors.amber,
    Colors.green,
    Colors.lime,
    Colors.indigo,
    Colors.cyan,
    Colors.teal
  ];

  // 当前的主题色
  static Color currentColorTheme = defaultColor;
}
