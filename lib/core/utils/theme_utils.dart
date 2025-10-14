import 'package:flutter/material.dart';
import 'package:auto_shield/core/design_system/theme.dart';

extension BuildContextX on BuildContext {
  ThemeData get theme => Theme.of(this);
  ColorScheme get colorScheme => theme.colorScheme;
  ColorExtension get colorExtension => theme.extension()!;

  Size get mSize => MediaQuery.sizeOf(this);
}
