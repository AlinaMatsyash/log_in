import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega/res/assets/assets.gen.dart';
import 'package:mega/res/assets/colors.gen.dart';
import 'package:mega/theme/app_typography.dart';

class WebBottom extends StatelessWidget {
  const WebBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff2A083D),
      height: 558,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 130.w, vertical: 80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Компания',
                      style: AppTypography.rubikMedium20.copyWith(
                        color: ColorName.white,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      'Omega Studio',
                      style: AppTypography.rubikRegular16.copyWith(
                        color: ColorName.white,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      'Работа в Omega Studio',
                      style: AppTypography.rubikRegular16.copyWith(
                        color: ColorName.white,
                      ),
                    ),
                    SizedBox(height: 70),
                    Text(
                      'Разработчикам',
                      style: AppTypography.rubikMedium20.copyWith(
                        color: ColorName.white,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      'Справка',
                      style: AppTypography.rubikRegular16.copyWith(
                        color: ColorName.white,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Пользователям',
                      style: AppTypography.rubikMedium20.copyWith(
                        color: ColorName.white,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      'Пользовательское\nсоглашение',
                      style: AppTypography.rubikRegular16.copyWith(
                        color: ColorName.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Политика\nконфиденциальности',
                      style: AppTypography.rubikRegular16.copyWith(
                        color: ColorName.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Политика использования\nфайлов cookie',
                      style: AppTypography.rubikRegular16.copyWith(
                        color: ColorName.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Справка',
                      style: AppTypography.rubikRegular16.copyWith(
                        color: ColorName.white,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Бизнесу',
                      style: AppTypography.rubikMedium20.copyWith(
                        color: ColorName.white,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      'Контакты',
                      style: AppTypography.rubikRegular16.copyWith(
                        color: ColorName.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Новости',
                      style: AppTypography.rubikRegular16.copyWith(
                        color: ColorName.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Справка',
                      style: AppTypography.rubikRegular16.copyWith(
                        color: ColorName.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 100),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ColorName.white),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 32.w, vertical: 13.h),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.download,
                              color: ColorName.textH,
                            ),
                            const SizedBox(width: 10),
                            Text('Скачать приложение',
                                style: AppTypography.rubikMedium16.copyWith(
                                  color: ColorName.textH,
                                )),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Row(
                      children: [
                        Text(
                          'Социальные\nсети:',
                          style: AppTypography.rubikMedium16.copyWith(
                            color: ColorName.white,
                          ),
                        ),
                        const SizedBox(width: 15),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: ColorName.white),
                          child: Padding(
                            padding: EdgeInsets.all(9.0.h),
                            child: Assets.icons.vkLogo.svg(),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: ColorName.white),
                          child: Padding(
                            padding: const EdgeInsets.all(9),
                            child: Assets.icons.telegramLogo.svg(),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: ColorName.white),
                          child: Padding(
                            padding: const EdgeInsets.all(9),
                            child: Assets.icons.youtubeLogo.svg(),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(height: 28),
            const Divider(
              height: 1,
              color: ColorName.textLight,
            ),
            const SizedBox(height: 28),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '© 2023ООО«ОМЕГА СТУДИО»\nИНН: 3528327105, ОГРН: 1213500003122\n162608, Вологодская область, г.Череповец, улБелинского, д.1/3',
                  style: AppTypography.rubikRegular16
                      .copyWith(color: ColorName.white),
                ),
                Assets.images.footerLogoFasie.image()
              ],
            )
          ],
        ),
      ),
    );
  }
}
