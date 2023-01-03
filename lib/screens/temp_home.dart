// // import 'dart:html';
// import 'dart:io';
// import 'package:e_commerce_ui/models/product.dart';
// import 'package:e_commerce_ui/widgets/product_tile.dart';
// import 'package:flutter/material.dart';

// class TempHome extends StatelessWidget {
//   const TempHome({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final List<Product> products = myProducts();
//     return Scaffold(
//       appBar: AppBar(),
//       body: ListView.separated(
//         itemCount: products.length,
//         separatorBuilder: (context, index) => SizedBox(height: 20),
//         itemBuilder: (context, index) => ProductTile(product: products[index]),
//       ),
//     );
//   }
// }
