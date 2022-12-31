import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class TestTab extends StatelessWidget {
  const TestTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: GridView.builder(
        itemCount: 11,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10),
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.pink[400],
              borderRadius: BorderRadius.circular(10),
            ),
            
          );
        },
      ),
    );
  }
}
