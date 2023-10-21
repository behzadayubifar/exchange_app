import 'package:exchange/gen/assets.gen.dart';
import 'package:exchange/route_manager/route_names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        SectionWidget(title: "ارز", image: Assets.images.dolar.image(scale: 6)),
      ],
    ));
  }
}

class SectionWidget extends StatelessWidget {
  const SectionWidget({
    super.key,
    required this.title,
    required this.image,
  });

  final String title;
  final Image image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(NamedRoute.currencies),
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(143, 28, 28, 67),
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 10,
              offset: Offset(0, 3),
            ),
          ],
        ),
        width: MediaQuery.of(context).size.width / 3.6,
        height: MediaQuery.of(context).size.height / 3.6,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 10,
            ),
            image,
            Text(
              title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
