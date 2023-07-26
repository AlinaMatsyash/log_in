import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega/core/info.dart';
import 'package:mega/feature/log_in/presentation/widgets/log_in_widget.dart';
import 'package:mega/feature/log_in/presentation/widgets/web_bottom.dart';
import 'package:mega/feature/log_in/presentation/widgets/web_top.dart';
import 'package:mega/res/assets/colors.gen.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  TextEditingController controllerSearch = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              web
                  ? WebTop(
                      controllerSearch: controllerSearch,
                    )
                  : desktop
                      ? Container()
                      : Container(),
              Container(
                width: MediaQuery.of(context).size.width,
                height: desktop
                    ? MediaQuery.of(context).size.height
                    : web
                        ? MediaQuery.of(context).size.height - 250.h
                        : MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        mobile
                            ? 'assets/images/background_phone.png'
                            : web
                                ? 'assets/images/background_web.png'
                                : 'assets/images/background_desktop.png',
                      ),
                      fit: BoxFit.fill),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: web
                      ? CrossAxisAlignment.start
                      : CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: web
                          ? EdgeInsets.symmetric(horizontal: 130.w)
                          : EdgeInsets.all(17.w),
                      child: LogInWidget(
                        controllerEmail: controllerEmail,
                        controllerPassword: controllerPassword,
                      ),
                    ),
                  ],
                ),
              ),
              web
                  ? const WebBottom()
                  : desktop
                      ? Container()
                      : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
