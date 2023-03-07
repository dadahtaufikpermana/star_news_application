import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:star_news_application/app/modules/splash/views/splash_view.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      home: SplashView(
      ),
    ),
  );
}
