import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SmallDots extends StatelessWidget {
  SmallDots({required this.isSelected, required this.onFunction, super.key});

  final bool isSelected;
  VoidCallback onFunction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: InkWell(
        onTap: onFunction,
        child: Container(
          width: 5,
          height: 5,
          decoration: BoxDecoration(
              color: isSelected == true ? Colors.pink : Colors.grey,
              shape: BoxShape.circle),
        ),
      ),
    );
  }
}
