import 'package:e_commerce_ui/models/myproduct.dart';
import 'package:e_commerce_ui/screens/product_detail_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
// import 'dart:html';
import 'dart:io';

import '../../widgets/my_product_tile.dart';

class ColleagueTab extends StatelessWidget {
  ColleagueTab({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Product> list = productsList();
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: StaggeredGridView.countBuilder(
        staggeredTileBuilder: (index) =>
            StaggeredTile.count(3, index.isEven ? 5.3 : 4),
        itemCount: list.length,
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
