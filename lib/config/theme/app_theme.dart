import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF44149F);

const List<Color> _colorThemes = [
  _customColor,
  Colors.red,
  Colors.green,
  Colors.blue,
  Colors.yellow,
  Colors.purple,
  Colors.orange,
  Colors.pink,
];

class AppTheme {
  final int selectedColor;

  AppTheme({
    this.selectedColor = 0,
  }) : assert(selectedColor >= 0 && selectedColor < _colorThemes.length,
            'Colors must be between 0 and ${_colorThemes.length - 1}'); // condition to check if the selectedColor is between 0 and the length of the _colorThemes list

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
    );
  }
}
