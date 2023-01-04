import 'package:e_commerce_ui/models/myproduct.dart';
import 'package:e_commerce_ui/screens/my_product_tile.dart';
import 'package:e_commerce_ui/screens/product_detail_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
// import 'dart:html';
import 'dart:io';

class MyAwardTab extends StatelessWidget {
  MyAwardTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: StaggeredGridView.countBuilder(
        staggeredTileBuilder: (index) =>
            StaggeredTile.count(3, index.isEven ? 5.3 : 4),
        itemCount: productsList.length,
        crossAxisCount: 6,
        crossAxisSpacing: 12,
        mainAxisSpacing: 14,
        itemBuilder: (context, index) {
          Product product = productsList[index];
          return MyProductTile(product: productsList[index], tileIndex: index);
        },
      ),
    );
  }
}
