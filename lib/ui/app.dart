import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttm01_flutter_dependency_injection/ui/bindings/initial_bindings.dart';
import 'package:ttm01_flutter_dependency_injection/ui/pages/detail_page.dart';
import 'package:ttm01_flutter_dependency_injection/ui/pages/home_page.dart';

class MyApp extends StatelessWidget {
  final String flavor;
  const MyApp({super.key, required this.flavor});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      getPages: [
        GetPage(
          name: '/',
          page: () => const HomePage(),
        ),
        GetPage(
          name: '/post',
          page: () => DetailPage(post: Get.arguments),
        ),
      ],
      initialBinding: InitialBindings(),
      builder: (context, child) {
        return Stack(
          children: [
            child ?? const SizedBox.shrink(),
            Positioned(
              top: 0,
              left: 0,
              child: Banner(
                message: flavor,
                location: BannerLocation.topStart,
                color: Colors.red,
              ),
            ),
          ],
        );
      },
    );
  }
}
