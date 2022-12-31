import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ColleaguesTab extends StatelessWidget {
  const ColleaguesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 16, mainAxisSpacing: 16),
        itemBuilder: (context, index) {
          return Column(
            children: [
              // wrap this below container with expanded
              Container(
                decoration: BoxDecoration(
                  color: Colors.pink[400],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 14, top: 16),
                      child: Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.favorite,
                          color: Color(0xFFf06e51),
                        ),
                      ),
                    ),
                    Center(
                      child: Image.asset(
                        'assets/images/pent.png',
                        width: 200,
                        height: 130,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              // product name and price
              // Text(
              //   'T- Shirt',
              //   style: TextStyle(
              //       color: Colors.black,
              //       fontWeight: FontWeight.bold,
              //       fontSize: 15),
              // ),
              // SizedBox(
              //   height: 3,
              // ),
              // Text('8.32 786867'),
            ],
          );
        },
      ),
    );
  }
}
