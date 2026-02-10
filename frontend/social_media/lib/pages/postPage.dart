import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';

class Postpage extends StatelessWidget {
  const Postpage({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Get.toNamed("/home");
      },
      child: Text("Home page"),
    );
  }
}
