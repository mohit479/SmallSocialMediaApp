// flutter run -d web-server --web-port=8080 --web-hostname=0.0.0.0

import 'package:flutter/material.dart';
import 'package:social_media/components/cards.dart';
import 'package:social_media/pages/HomePage.dart';
import 'package:get/get.dart';
import 'package:social_media/routs/pageRout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: Pagerout.home,
      getPages: Pagerout.routes,
      // home: Homepage(),
    );
  }
}
