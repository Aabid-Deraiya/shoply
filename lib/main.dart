import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/extensions/ext_build_context.dart';
import 'package:shoply/style/custom_theme.dart';
import 'package:shoply/utils/app_colors.dart';
import 'package:shoply/utils/app_size.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaler: TextScaler.noScaling),
      child: ScreenUtilInit(
        minTextAdapt: true,
        builder: (context, child) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: CustomTheme().light,
            themeMode: ThemeMode.light,
            home: Scaffold(
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      'Welcome to It\'s Code',
                      style: context.textTheme.bodyLarge,
                    ),
                  ),
                  SizedBox(
                    height: AppSize.h20,
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Subscribe',
                        style: context.textTheme.titleLarge?.copyWith(
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
