import 'package:flutter/material.dart';

class RectangleWidget extends StatelessWidget {
RectangleWidget({required this.txt,required this.number,super.key});

  String txt;
  String number;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        // color: Color(0xFFf7f0f0),
        color: Colors.grey[200],
        border: Border.all(color: Colors.grey, width: 2),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
                text: TextSpan(
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                    children: [
                  TextSpan(text: txt),
                  TextSpan(text: '\n'),
                  TextSpan(
                      text: number,
                      style: TextStyle(
                          color: Color(0xFF1a1e3f),
                          fontSize: 16,
                          fontWeight: FontWeight.bold))
                ]))
          ],
        ),
      ),
    );
  }
}
