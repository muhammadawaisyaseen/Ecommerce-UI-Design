import 'package:e_commerce_ui/screens/tabs/colleagues_tab.dart';
import 'package:e_commerce_ui/screens/tabs/collection_tab.dart';
import 'package:e_commerce_ui/screens/tabs/myaward_tab.dart';
import 'package:e_commerce_ui/screens/tabs/test.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(currentIndex: 0, items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ]),
          body: Container(
            color: Colors.white,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
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
                          ],
                        ),
                      ),
                      // Tab Bar
                      Container(
                        // margin: EdgeInsets.all(10),
                        width: 350,
                        height: 60,
                        decoration: BoxDecoration(
                            color: const Color(0xFF282d54),
                            borderRadius: BorderRadius.circular(16)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TabBar(
                              indicator: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: const Color(0xFF1b1e3f)),
                              tabs: const [
                                Text('Colleagues'),
                                Text('Collection'),
                                Text('My Award')
                              ]),
                        ),
                      ),
                      // TabBarView(children: children)
                    ],
                  ),
                ),

                //2nd Child
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.645,
                  decoration: const BoxDecoration(
                    color: Color(0xFF1a1e3f),
                  ),
                  child: Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.645,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(90))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 24, top: 50),
                          child: Text(
                            'Collection',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ),
                        Expanded(
                          child: TabBarView(children: [
                            TestTab(),
                            CollectionTab(),
                            MyAwardTab(),
                          ]),
                        ),
                        
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
