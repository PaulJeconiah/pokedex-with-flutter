import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pokedex_with_flutter/components/theme.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      theme: pokemonTheme,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
