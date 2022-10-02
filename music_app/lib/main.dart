import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tune Up',
      theme: ThemeData(
        // This is the theme of your application.
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.white,
              displayColor: Colors.white,
            ),
      ),
      home: const HomePage(),
      getPages: [
        GetPage(name: '/', page: () => const HomePage()),
      ],
    );
  }
}
