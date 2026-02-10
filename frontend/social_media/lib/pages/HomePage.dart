import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';
import 'package:social_media/components/cards.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Social Media")),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => Cards(
                image: "https://picsum.photos/800/500",
                content: "Image is this",
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Get.toNamed("/post");
            },
            child: Text("add post"),
          ),
        ],
      ),
    );
  }
}
