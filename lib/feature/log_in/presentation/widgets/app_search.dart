import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega/res/assets/colors.gen.dart';
import 'package:mega/theme/app_typography.dart';

/// Виджет поиска TextField
///
/// Контроллкер виджета [controller]
/// Виджет изменения [onChanged]
/// Коллбэк при нажатии на кнопку [onTap]
class SearchField extends StatelessWidget {
  const SearchField({
    required this.controller,
    this.onChanged,
    this.onTap,
    Key? key,
  }) : super(key: key);

  /// Контроллер
  final TextEditingController controller;

  /// Коллбэк при нажатии на кнопку
  final VoidCallback? onTap;

  /// События изменения текста в поле ввода
  final ValueChanged<String>? onChanged;

  /// Высота виджета
  static double _height = 50;

  /// Скругление виджета
  static const _radius = 10.0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _height,
      child: TextField(
        onTap: onTap,
        controller: controller,
        style: AppTypography.rubikRegular16.copyWith(color: ColorName.textP),
        cursorColor: ColorName.textP,
        onChanged: onChanged,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(_radius),
              borderSide:
                  const BorderSide(width: 2, color: ColorName.violetLight)),
          suffixIcon: const Icon(
            Icons.search,
            color: ColorName.violetLight,
          ),
          hintText: "Поиск",
          hintStyle: AppTypography.rubikRegular16
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
