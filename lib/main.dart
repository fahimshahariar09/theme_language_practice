
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theme_language/utills/language.dart';
import 'package:theme_language/utills/theme.dart';
import 'package:theme_language/view/screen/home.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme().lightTheme,
      translations: AppLanguage(),
      locale: const Locale("bn"),
      home: const HomePage(),
    );
  }
}
