import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega/feature/log_in/presentation/widgets/app_search.dart';
import 'package:mega/res/assets/assets.gen.dart';
import 'package:mega/res/assets/colors.gen.dart';
import 'package:mega/theme/app_typography.dart';

class WebTop extends StatelessWidget {
  TextEditingController controllerSearch;
  WebTop({super.key, required this.controllerSearch});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorName.white,
      height: 100,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: 10.h, horizontal: 130.w),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Для вас',
                  style: AppTypography.rubikRegular13
                      .copyWith(color: ColorName.link),
                ),
                Padding(
                  padding:EdgeInsets.symmetric(
                      horizontal: 20.w),
                  child: Text(
                    'Для бизнеса',
                    style: AppTypography.rubikRegular13
                        .copyWith(color: ColorName.link),
                  ),
                ),
                Text(
                  'Для разработчиков',
                  style: AppTypography.rubikRegular13
                      .copyWith(color: ColorName.link),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Assets.images.logoWeb.image(),
                    SizedBox(
                      width: 30.w,
                    ),
                    Text(
                      'Игры',
                      style: AppTypography.rubikMedium16
                          .copyWith(color: ColorName.textH),
                    ),
                    SizedBox(
                      width: 25.w,
                    ),
                    Text(
                      'Приложения',
                      style: AppTypography.rubikMedium16
                          .copyWith(color: ColorName.textH),
                    ),
                    SizedBox(
                      width: 25.w,
                    ),
                    Text(
                      'Сообщество',
                      style: AppTypography.rubikMedium16
                          .copyWith(color: ColorName.textH),
                    ),
                    SizedBox(
                      width: 25.w,
                    ),
                    Text(
                      'Турнир',
                      style: AppTypography.rubikMedium16
                          .copyWith(color: ColorName.textH),
                    ),
                    SizedBox(
                      width: 25.w,
                    ),
                    Text(
                      'Справка',
                      style: AppTypography.rubikMedium16
                          .copyWith(color: ColorName.textH),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 244.w,
                      child: SearchField(
                          controller: controllerSearch),
                    ),
                    SizedBox(width: 17.w),
                    Assets.icons.shoppingCart.svg(),
                    SizedBox(width: 17.w),
                    Assets.icons.favorite.svg(),
                    SizedBox(width: 17.w),
                    Row(
                      children: [
                        Assets.icons.login.svg(),
                        SizedBox(width: 3.w),
                        Text(
                          'Вход',
                          style: AppTypography.rubikMedium12
                              .copyWith(
                              color: ColorName.textH),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
