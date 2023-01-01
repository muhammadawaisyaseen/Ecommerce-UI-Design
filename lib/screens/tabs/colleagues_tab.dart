import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ColleagueTab extends StatelessWidget {
  ColleagueTab({super.key});

  List<Color> tileColor = [
    Color(0xFFffeee6),
    Color(0xFFeafffc),
    Color(0xFFfff0f8),
    Color(0xFFfffbe8),
    Color.fromARGB(255, 194, 210, 208),
    Color.fromARGB(139, 229, 232, 238),
  ];

  List<String> productPhoto = [
    'assets/images/shirt.png',
    'assets/images/pent.png',
    'assets/images/kids kameez.png',
    'assets/images/kids pentshirt.png',
    'assets/images/shalwar kameez.png',
    'assets/images/sharwani.png'
  ];

  List<String> productName = [
    'Half sleaves t-shirt',
    'Men jeans Pent',
    'Red cotton kids kameez',
    'kids pentshirt',
    'Men white shalwar kameez',
    'Marriage sharwani'
  ];
  
  List<int> productPrice = [
    130,
    270,
    410,
    699,
    371,
    765,
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: StaggeredGridView.countBuilder(
        staggeredTileBuilder: (index) =>
            StaggeredTile.count(3, index.isEven ? 5.3 : 4),
        itemCount: 6,
        crossAxisCount: 6,
        crossAxisSpacing: 12,
        mainAxisSpacing: 14,
        itemBuilder: (context, index) {
          return Container(
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
                      color: tileColor[index],
                      borderRadius: BorderRadius.circular(10)),
                  width: double.infinity,
                  height: index.isEven ? 270 : 200,
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
                          productPhoto[index],
                          width: double.infinity,
                          height: index.isOdd ? 130 : 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),

                //price and Name

                Spacer(),
                Text(
                  productName[index],
                  style: TextStyle(
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
                          text: '\$ ${productPrice[index].toString()}',
                          style: TextStyle(color: Colors.pink)),
                      TextSpan(
                        text: '  ',
                      ),
                      TextSpan(
                        text: '20% off',
                      ),
                    ])),
                ///////////////////////
              ],
            ),
          );
        },
      ),
    );
  }
}
