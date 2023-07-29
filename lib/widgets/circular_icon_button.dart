import 'package:flutter/material.dart';

enum CircleIconButtonStyle {
  standard,
  filled,
  filledTonal,
  outlined,
}

class CircleIconButton extends StatelessWidget {
  const CircleIconButton({
    super.key,
    required this.icon,
    this.circleIconButtonStyle = CircleIconButtonStyle.filled,
    required this.onPressed,
    this.isSelected,
    this.selectedIcon,
  });

  final IconData icon;
  final CircleIconButtonStyle circleIconButtonStyle;
  final VoidCallback? onPressed;

  /// For toggle buttons
  final bool? isSelected;
  final Widget? selectedIcon;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;
    return IconButton(
      onPressed: onPressed,
      icon: Icon(icon),
      isSelected: isSelected,
      selectedIcon: selectedIcon,
      style: _CircleIconButtonStyleProvider.getStyle(
          circleIconButtonStyle: circleIconButtonStyle,
          isEnabled: onPressed != null,
          isSelected: isSelected == true,
          colors: colors),
    );
  }
}

// adapted from samples at https://api.flutter.dev/flutter/material/IconButton-class.html
class _CircleIconButtonStyleProvider {
  static ButtonStyle? getStyle({
    required CircleIconButtonStyle circleIconButtonStyle,
    required bool isEnabled,
    required bool isSelected,
    required ColorScheme colors,
  }) {
    switch (circleIconButtonStyle) {
      case CircleIconButtonStyle.standard:
        return null;
      case CircleIconButtonStyle.filled:
        return isEnabled
            ? _enabledFilledButtonStyle(isSelected, colors)
            : _disabledFilledButtonStyle(isSelected, colors);
      case CircleIconButtonStyle.filledTonal:
        return isEnabled
            ? _enabledFilledTonalButtonStyle(isSelected, colors)
            : _disabledFilledTonalButtonStyle(isSelected, colors);
      case CircleIconButtonStyle.outlined:
        return isEnabled
            ? _enabledOutlinedButtonStyle(isSelected, colors)
            : _disabledOutlinedButtonStyle(isSelected, colors);
    }
  }

  static ButtonStyle _enabledFilledButtonStyle(
    bool selected,
    ColorScheme colors,
  ) {
    return IconButton.styleFrom(
      foregroundColor: selected ? colors.onPrimary : colors.primary,
      backgroundColor: selected ? colors.primary : colors.surfaceVariant,
      disabledForegroundColor: colors.onSurface.withOpacity(0.38),
      disabledBackgroundColor: colors.onSurface.withOpacity(0.12),
      hoverColor: selected
          ? colors.onPrimary.withOpacity(0.08)
          : colors.primary.withOpacity(0.08),
      focusColor: selected
          ? colors.onPrimary.withOpacity(0.12)
          : colors.primary.withOpacity(0.12),
      highlightColor: selected
          ? colors.onPrimary.withOpacity(0.12)
          : colors.primary.withOpacity(0.12),
    );
  }

  static ButtonStyle _disabledFilledButtonStyle(
    bool selected,
    ColorScheme colors,
  ) {
    return IconButton.styleFrom(
      disabledForegroundColor: colors.onSurface.withOpacity(0.38),
      disabledBackgroundColor: colors.onSurface.withOpacity(0.12),
    );
  }

  static ButtonStyle _enabledFilledTonalButtonStyle(
    bool selected,
    ColorScheme colors,
  ) {
    return IconButton.styleFrom(
      foregroundColor:
          selected ? colors.onSecondaryContainer : colors.onSurfaceVariant,
      backgroundColor:
          selected ? colors.secondaryContainer : colors.surfaceVariant,
      hoverColor: selected
          ? colors.onSecondaryContainer.withOpacity(0.08)
          : colors.onSurfaceVariant.withOpacity(0.08),
      focusColor: selected
          ? colors.onSecondaryContainer.withOpacity(0.12)
          : colors.onSurfaceVariant.withOpacity(0.12),
      highlightColor: selected
          ? colors.onSecondaryContainer.withOpacity(0.12)
          : colors.onSurfaceVariant.withOpacity(0.12),
    );
  }

  static ButtonStyle _disabledFilledTonalButtonStyle(
    bool selected,
    ColorScheme colors,
  ) {
    return IconButton.styleFrom(
      disabledForegroundColor: colors.onSurface.withOpacity(0.38),
      disabledBackgroundColor: colors.onSurface.withOpacity(0.12),
    );
  }

  static ButtonStyle _enabledOutlinedButtonStyle(
    bool selected,
    ColorScheme colors,
  ) {
    return IconButton.styleFrom(
      backgroundColor: selected ? colors.inverseSurface : null,
      hoverColor: selected
          ? colors.onInverseSurface.withOpacity(0.08)
          : colors.onSurfaceVariant.withOpacity(0.08),
      focusColor: selected
          ? colors.onInverseSurface.withOpacity(0.12)
          : colors.onSurfaceVariant.withOpacity(0.12),
      highlightColor: selected
          ? colors.onInverseSurface.withOpacity(0.12)
          : colors.onSurface.withOpacity(0.12),
      side: BorderSide(color: colors.outline),
    ).copyWith(
      foregroundColor:
          MaterialStateProperty.resolveWith((Set<MaterialState> states) {
        if (states.contains(MaterialState.selected)) {
          return colors.onInverseSurface;
        }
        if (states.contains(MaterialState.pressed)) {
          return colors.onSurface;
        }
        return null;
      }),
    );
  }

  static ButtonStyle _disabledOutlinedButtonStyle(
    bool selected,
    ColorScheme colors,
  ) {
    return IconButton.styleFrom(
      disabledForegroundColor: colors.onSurface.withOpacity(0.38),
      disabledBackgroundColor:
          selected ? colors.onSurface.withOpacity(0.12) : null,
      side:
          selected ? null : BorderSide(color: colors.outline.withOpacity(0.12)),
    );
  }
}
