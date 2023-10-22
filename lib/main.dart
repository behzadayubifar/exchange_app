import 'package:exchange/route_manager/binding.dart';
import 'package:exchange/route_manager/pages.dart';
import 'package:exchange/route_manager/route_names.dart';
import 'package:exchange/view/splash_screen.dart';
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
              appBarTheme: const AppBarTheme(
                backgroundColor: Color.fromARGB(255, 9, 63, 93),
                toolbarHeight: 70,
                titleTextStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold),
              ),
              scaffoldBackgroundColor: const Color.fromARGB(255, 9, 63, 93),
              // primaryColorDark: Colors.purpleAccent,
              // primaryColor: Colors.purpleAccent,
              // colorScheme: ColorScheme(
              //   brightness: Brightness.dark,
              //   primary: Colors.purpleAccent,
              //   onPrimary: Colors.purpleAccent,
              //   secondary: Colors.purpleAccent,
              //   onSecondary: Colors.purpleAccent,
              //   error: Colors.red,
              //   onError: Colors.red,
              //   background: Colors.purpleAccent,
              //   onBackground: Colors.purpleAccent,
              //   surface: Colors.purpleAccent,
              //   onSurface: Colors.purpleAccent,
              // ),
              // brightness: Brightness.dark,
              fontFamily: GoogleFonts.vazirmatn().fontFamily)
          .copyWith(
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white),
          labelLarge: TextStyle(color: Colors.white),
          bodySmall: TextStyle(color: Colors.white),
          displayLarge: TextStyle(color: Colors.white),
          displayMedium: TextStyle(color: Colors.white),
          displaySmall: TextStyle(color: Colors.white),
          headlineMedium: TextStyle(color: Colors.white),
          headlineSmall: TextStyle(color: Colors.white),
          titleLarge: TextStyle(color: Colors.white),
          labelSmall: TextStyle(color: Colors.white),
          titleMedium: TextStyle(color: Colors.white),
          titleSmall: TextStyle(color: Colors.white),
        ),
      ),

      // darkTheme: ThemeData(brightness: Brightness.dark),
      // themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      home: const SplashScreen(),
      initialBinding: CurrencyBinding(),
      initialRoute: NamedRoute.initalRoute,
      getPages: Pages.pages,
    );
  }
}
