import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega/core/info.dart';
import 'package:mega/feature/log_in/presentation/bloc/bloc.dart';
import 'package:mega/res/assets/assets.gen.dart';
import 'package:mega/res/assets/colors.gen.dart';
import 'package:mega/theme/app_typography.dart';

import 'app_buttton.dart';
import 'app_text_field.dart';

class LogInWidget extends StatefulWidget {
  TextEditingController controllerEmail;
  TextEditingController controllerPassword;

  LogInWidget({
    super.key,
    required this.controllerEmail,
    required this.controllerPassword,
  });

  @override
  State<LogInWidget> createState() => _LogInWidgetState();
}

class _LogInWidgetState extends State<LogInWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: web
          ? 472.w
          : desktop
              ? 468.w
              : double.infinity,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.75),
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: EdgeInsets.all(28.w),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Вход',
                style:
                    AppTypography.rubikBold52.copyWith(color: ColorName.textH),
              ),
            ),
            SizedBox(height: 8.h),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Введите данные, чтобы войти в личный кабинет.',
                style:
                    AppTypography.rubikRegular15.copyWith(color: ColorName.textP),

              ),
            ),
            SizedBox(height: 8.h),
            AppTextField(
                controller: widget.controllerEmail, labelText: 'E-mail'),
            SizedBox(height: 12.h),
            AppTextField(
                controller: widget.controllerPassword, labelText: 'Пароль'),
            SizedBox(height: 12.h),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Забыли пароль?',
                style: AppTypography.rubikRegular12.copyWith(
                    color: ColorName.link,
                    decoration: TextDecoration.underline),
              ),
            ),
            SizedBox(height: 20.h),
            SizedBox(
              width: mobile ? 324.w : desktop ? 408.w : 412.w,
              child: AppButton(
                text: 'Войти',
                onPressed: logIn,
              ),
            ),
            SizedBox(height: 28.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 1.h,
                  width: mobile
                      ? 50.5.w
                      : desktop
                          ? 92.5.w
                          : 94.2.w,
                  color: ColorName.textP,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Text(
                    'Или войдите с помощью:',
                    style: AppTypography.rubikRegular16.copyWith(
                      color: ColorName.textP,
                    ),
                  ),
                ),
                Container(
                  height: 1.h,
                  width: mobile
                      ? 50.5.w
                      : desktop
                          ? 92.5.w
                          : 94.2.w,
                  color: ColorName.textP,
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: ColorName.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: EdgeInsets.all(14.0.h),
                    child: Assets.images.yandexColor.image(),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: ColorName.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: EdgeInsets.all(14.0.h),
                    child: Assets.images.googleColor.image(),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: ColorName.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: EdgeInsets.all(14.0.h),
                    child: Assets.images.vkColor.image(),
                  ),
                )
              ],
            ),
            SizedBox(height: 28.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Ещё нет акаунта?',
                  style: AppTypography.rubikRegular15.copyWith(
                    color: ColorName.textP,
                  ),
                ),
                Text(
                  'Зарегистрируйтесь',
                  style: AppTypography.rubikMedium16.copyWith(
                    color: ColorName.link,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  void logIn() {
    BlocProvider.of<LogInBloc>(context).add(GetTokenEvent(
        widget.controllerEmail.text, widget.controllerPassword.text));
  }
}
