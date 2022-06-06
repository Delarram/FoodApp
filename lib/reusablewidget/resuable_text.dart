import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final String text;
  final String title;
  final double size;
  final FontWeight fontWeight;
  final Color color;


   CustomContainer(
      {required this.text,
        required this.size,
        required this.fontWeight,
        required this.color, required this.title,

      });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      height: 50,
      width: 80,
      decoration: BoxDecoration(
        color: Colors.grey[100],
          borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: size,
              fontWeight: fontWeight,
              color: color,
            ),
          ),

          Text(title)
        ],
      )
    );
  }
}
