import 'package:flutter/material.dart';
import 'package:wellness_app/splash_screen.dart';
import 'package:wellness_app/theme/colors.dart';
import 'package:wellness_app/theme/style.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.backgroundColor,
        fontFamily: 'Epilogue',
        textTheme: const TextTheme(
          bodyMedium: CustomStyle.defaultTextStyle,
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
