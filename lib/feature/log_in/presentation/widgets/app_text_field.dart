import 'package:flutter/material.dart';
import 'package:mega/res/assets/colors.gen.dart';
import 'package:mega/theme/app_typography.dart';

/// Виджет ввода TextFormField
///
/// Контроллкер виджета [controller]
/// Виджет изменения [onChanged]
/// Текст подсказки [hintText]
/// Коллбэк при нажатии на кнопку [onTap]
class AppTextField extends StatelessWidget {
  const AppTextField({
    required this.controller,
    required this.labelText,
    this.onChanged,
    this.onTap,
    Key? key,
  }) : super(key: key);

  /// Контроллер
  final TextEditingController controller;

  final String labelText;

  /// Коллбэк при нажатии на кнопку
  final VoidCallback? onTap;

  /// События изменения текста в поле ввода
  final ValueChanged<String>? onChanged;

  /// Высота виджета
  static  const double _height = 50;

  /// Скругление виджета
  static const _radius = 10.0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _height,
      child: TextFormField(
        onTap: onTap,
        controller: controller,
        style: AppTypography.rubikRegular16.copyWith(color: ColorName.textP),
        cursorColor: ColorName.textP,
        onChanged: onChanged,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(_radius),
            borderSide:
                const BorderSide(width: 2, color: ColorName.violetLight),
          ),
          labelText: labelText,
          labelStyle: AppTypography.rubikRegular16
              .copyWith(color: ColorName.violetLight),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(_radius),
            borderSide:
                const BorderSide(width: 2, color: ColorName.violetLight),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(_radius),
            borderSide: const BorderSide(width: 2, color: ColorName.violetHard),
          ),
        ),
      ),
    );
  }
}
