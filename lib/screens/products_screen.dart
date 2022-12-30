import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.white,
          child: Column(
            children: [
              // 1st Child
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.25,
                decoration: const BoxDecoration(
                    color: Color(0xFF1a1e3f),
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(90))),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 26),
                      child: Row(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                color: const Color(0xFFf3c9ca),
                                border: Border.all(color: Colors.pink),
                                shape: BoxShape.circle,
                                image: const DecorationImage(
                                    image:
                                        AssetImage('assets/images/awais.jpg'),
                                    fit: BoxFit.fitWidth)),
                          ),
                          const SizedBox(
                            width: 10,
                          ),

                          ///
                          RichText(
                              text: const TextSpan(
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                  children: [
                                TextSpan(
                                  text: "Muhammad Awais",
                                ),
                                TextSpan(
                                  text: '\n',
                                ),
                                TextSpan(
                                    text: '@malikawais',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14)),
                              ])),
                          const Spacer(),
                          Container(
                            width: 50,
                            height: 50,
                            decoration: const BoxDecoration(
                                // color: Colors.black,
                                ),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.shopping_bag_rounded,
                                  color: Colors.white,
                                ),
                                Container(
                                  width: 3,
                                  height: 3,
                                  decoration: const BoxDecoration(
                                      color: Colors.pink,
                                      shape: BoxShape.circle),
                                )
                              ],
                            ),
                          ),
                          // Tab Bar
                        ],
                      ),

                    )
                  ],
                ),
              ),
              //2nd Child

              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.71,
                decoration: const BoxDecoration(
                  color: Color(0xFF1a1e3f),
                ),
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.71,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(90))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
