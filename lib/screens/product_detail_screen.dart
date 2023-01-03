import 'package:e_commerce_ui/models/myproduct.dart';
import 'package:e_commerce_ui/widgets/custom_rectangle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProductDetailPage extends StatelessWidget {
  ProductDetailPage({super.key});

  // final Product obj;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            color: Color(0xFF1a1e3f),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // White container
              Container(
                height: MediaQuery.of(context).size.height * 0.75,
                width: MediaQuery.of(context).size.width * 1,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xFFe7e7e7), Color(0xFFffffff)],
                        stops: [0.3, 0.9]),
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(80))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(25),
                      child: Container(
                        color: Colors.yellow,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                  color: Color(0xFF1a1e3f),
                                  borderRadius: BorderRadius.circular(8)),
                              child: const Icon(
                                Icons.menu_rounded,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                            Spacer(),
                            const Icon(
                              Icons.shopping_bag_rounded,
                              color: Color(0xFF1a1e3f),
                            ),
                            Container(
                              width: 3,
                              height: 3,
                              decoration: const BoxDecoration(
                                  color: Colors.pink, shape: BoxShape.circle),
                            ),
                          ],
                        ),
                      ),
                    ),
                    /////////////
                    SizedBox(
                      height: 24,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          // left details column
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                  text: const TextSpan(
                                      style: TextStyle(
                                          color: Color(0xFF1a1e3f),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                      children: [
                                    TextSpan(text: 'T-shirt'),
                                    TextSpan(text: '\n\n'),
                                    TextSpan(
                                        text: '75.00',
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 30))
                                  ])),
                              const SizedBox(
                                height: 30,
                              ),
                              RectangleWidget(txt: 'Price', number: '75.00'),
                              SizedBox(
                                height: 20,
                              ),
                              RectangleWidget(txt: 'Discount', number: '30.00'),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: 140,
                                height: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  // color: Color(0xFFf7f0f0),
                                  color: Colors.grey[200],
                                  border:
                                      Border.all(color: Colors.grey, width: 2),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      RichText(
                                          text: const TextSpan(
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 14),
                                              children: [
                                            TextSpan(text: 'Name'),
                                            TextSpan(text: '\n'),
                                            TextSpan(
                                                text:
                                                    'Cotton T- shirt for mens',
                                                style: TextStyle(
                                                    color: Color(0xFF1a1e3f),
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.bold))
                                          ]))
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          // Image Displayed
                          Spacer(),

                          Container(
                              width: 200,
                              height: 400,
                              color: Colors.pink,
                              child: Image.asset('assets/images/sharwani.png'))
                        ],
                      ),
                    ),

                    // Last Description
                    RichText(text: TextSpan(
                      children: [
                        TextSpan()
                      ]
                    )),
                  ],
                ),
              ),
              //Blue Container
              Expanded(
                child: Container(
                    width: MediaQuery.of(context).size.width * 1,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Color(0xFFe7e7e7), Color(0xFFffffff)],
                            stops: [0.3, 0.9]),
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(80))),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 1,
                      decoration: const BoxDecoration(
                          color: Color(0xFF1a1e3f),
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(60))),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
