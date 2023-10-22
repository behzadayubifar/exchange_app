import 'package:exchange/gen/assets.gen.dart';
import 'package:exchange/route_manager/route_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2))
        .then((value) => Get.toNamed(NamedRoute.home));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: Assets.images.coinDolar.provider(),
                height: 64,
              ),
              const SizedBox(
                height: 24,
              ),
              const SpinKitFadingCube(
                color: Colors.purpleAccent,
                size: 50.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
