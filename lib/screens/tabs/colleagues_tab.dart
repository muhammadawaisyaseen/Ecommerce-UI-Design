import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ColleagueTab extends StatelessWidget {
  const ColleagueTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: StaggeredGridView.countBuilder(
        // shrinkWrap: true,
        staggeredTileBuilder: (index) =>
            StaggeredTile.count(3, index.isOdd ? 4 : 5),
        itemCount: 8,
        // mainAxisExtent: 250,
        crossAxisCount: 6,

        ///
        crossAxisSpacing: 12,
        mainAxisSpacing: 14,

        itemBuilder: (context, index) {
          return Container(
            // height: 300,
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
                      color: Colors.pink[200],
                      borderRadius: BorderRadius.circular(10)),
                  width: double.infinity,
                  height: index.isOdd
                      ? 200
                      : 270, // (mainAxisExtent: 200 Total height of gridtile)
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
                          'assets/images/shirt.png',
                          // width: double.infinity,
                          // height: 130,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),

                //price and Name
                // const SizedBox(
                //   height: 6,
                // ),
                Spacer(),
                const Text(
                  'Half sleaves t-Shirt',
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                const SizedBox(
                  height: 2,
                ),
                RichText(
                    text: const TextSpan(
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                        children: [
                      TextSpan(
                          text: "Rs.887", style: TextStyle(color: Colors.pink)),
                      TextSpan(
                        text: '  ',
                      ),
                      TextSpan(
                        text: '20% off',
                      ),
                    ])),
              ],
            ),
          );
        },
      ),
    );
  }
}
