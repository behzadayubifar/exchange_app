import 'package:exchange/route_manager/binding.dart';
import 'package:exchange/route_manager/pages.dart';
import 'package:exchange/route_manager/route_names.dart';
import 'package:exchange/view/currency_screen.dart';
import 'package:exchange/view/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "دلار چند ؟",
      locale: const Locale('fa', 'IR'),
      theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: GoogleFonts.vazirmatn().fontFamily),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      home: Home(),
      initialBinding: CurrencyBinding(),
      initialRoute: NamedRoute.home,
      getPages: Pages.pages,
    );
  }
}
