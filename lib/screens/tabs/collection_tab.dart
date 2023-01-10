import 'package:e_commerce_ui/models/myproduct.dart';
import 'package:e_commerce_ui/widgets/my_product_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
// import 'dart:html';
import 'dart:io';

class CollectionTab extends StatelessWidget {
  CollectionTab({super.key});
  List<Product> list = productsList();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: StaggeredGridView.countBuilder(
        staggeredTileBuilder: (index) =>
            StaggeredTile.count(3, index.isEven ? 5.3 : 4),
        itemCount: productsList().length,
        crossAxisCount: 6,
        crossAxisSpacing: 12,
        mainAxisSpacing: 14,
        itemBuilder: (context, index) {
          Product product = list[index];
          return MyProductTile(p: product, tileIndex: index);
        },
      ),
    );
  }
}
