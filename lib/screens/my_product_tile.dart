import 'package:e_commerce_ui/models/myproduct.dart';
import 'package:e_commerce_ui/screens/product_detail_screen.dart';
import 'package:flutter/material.dart';

class MyProductTile extends StatelessWidget {
  MyProductTile({required this.product,required this.tileIndex, super.key});

  Product product;
  int tileIndex;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProductDetailPage(obj: product),
            ));
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          // color: Colors.yellow,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //product and fav icon
            Container(
              decoration: BoxDecoration(
                  // color: Colors.pink[200],
                  color: product.color,
                  borderRadius: BorderRadius.circular(10)),
              width: double.infinity,
              height: tileIndex.isEven ? 270 : 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 14, top: 16),
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.favorite,
                        color: Color(0xFFf06e51),
                      ),
                    ),
                  ),
                  Center(
                    child: Image.asset(
                      // 'assets/images/pent.png',
                      product.imageUrl,
                      width: double.infinity,
                      height: tileIndex.isOdd ? 130 : 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),

            //price and Name

            Spacer(),
            Text(
              product.name,
              style: const TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
            const SizedBox(
              height: 2,
            ),
            RichText(
                text: TextSpan(
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                    children: [
                  TextSpan(
                      // Text('Indian currency is ${currency}');
                      text: '\$ ${product.price.toString()}',
                      style: const TextStyle(
                          color: Colors.pink, fontWeight: FontWeight.bold)),
                  const TextSpan(
                    text: '   ',
                  ),
                  TextSpan(
                      // text: '20.32',
                      text: product.discount.toString(),
                      style: TextStyle(decoration: TextDecoration.lineThrough)),
                ])),
            ///////////////////////
          ],
        ),
      ),
    );
  }
}
