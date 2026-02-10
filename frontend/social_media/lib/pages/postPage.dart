import 'package:flutter/material.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';
import 'package:social_media/controller/imagePickerController.dart';

class Postpage extends StatelessWidget {
  Postpage({super.key});

  final Imagepickercontroller controller = Get.find<Imagepickercontroller>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            controller.pickImage();
            
          },
          child: Text("Upload pic"),
        ),
        ElevatedButton(
          onPressed: () {
            Get.toNamed("/home");
          },
          child: Text("Home page"),
        ),
      ],
    );
  }
}
