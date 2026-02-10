import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  String image;
  String content;

  Cards({super.key, required this.image, required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: double.infinity,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        // color: const Color.fromARGB(255, 255, 252, 252),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),

                // color: const Color.fromARGB(255, 255, 0, 0),
                image: DecorationImage(
                  image: NetworkImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Text(
            content,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 35,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
