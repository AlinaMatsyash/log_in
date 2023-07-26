import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega/res/assets/colors.gen.dart';

/// Стандартная кнопка в приложении
///
/// Текст кнопки [text]
/// Коллбэк при нажатии на кнопку [onPressed]
class AppButton extends StatelessWidget {
  const AppButton({required this.text, this.onPressed, Key? key})
      : super(key: key);

  /// Текст у кнопки
  final String text;

  /// Коллбэк при нажатии на кнопку
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 324.w,
      color: ColorName.mainButton,
      textColor: ColorName.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      height: 50,
      disabledColor: ColorName.bgCard,
      disabledTextColor: ColorName.violetHard,
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
