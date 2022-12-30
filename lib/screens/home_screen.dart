import 'package:e_commerce_ui/screens/products_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/smalldots.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int dotSelectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xFF1a1e3f),
        ),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width * 1,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xFFe7e7e7), Color(0xFFffffff)],
                      stops: [0.3, 0.9]),
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(80))),
              child: Image.asset('assets/images/homephoto.png'),
            ),
            Container(
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width * 1,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xFFe7e7e7), Color(0xFFffffff)],
                        stops: [0.3, 0.9]),
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(80))),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width * 1,
                  decoration: const BoxDecoration(
                      color: Color(0xFF1a1e3f),
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(60))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 60, bottom: 30, left: 30, right: 40),
                        child: RichText(
                            text: const TextSpan(
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 32),
                                children: [
                              TextSpan(
                                text: "It's time for",
                              ),
                              TextSpan(
                                text: '\n',
                              ),
                              TextSpan(
                                text: 'Winter Shopping!',
                              ),
                              TextSpan(
                                text: '\n\n',
                              ),
                              TextSpan(
                                  text:
                                      'Lets purchase the good quality cloths from here. You will be happy and satisfied after shopping!',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal)),
                            ])),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      // Join us to Purchase Button
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) => ProductsPage(),
                              
                            ));
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width * 1,
                            height: 70,
                            decoration: BoxDecoration(
                                gradient: const LinearGradient(colors: [
                                  Color(0xFFf34351),
                                  Color(0xFFfd4553)
                                ]),
                                borderRadius: BorderRadius.circular(50)),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(vertical: 25),
                              child: Text(
                                'Join us to Purchase',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                      // Dots listview builder
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 1,
                        height: 30,
                        child: Center(
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: 5,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return SmallDots(
                                isSelected:
                                    dotSelectedIndex == index ? true : false,
                                onFunction: () {
                                  setState(() {
                                    dotSelectedIndex = index;
                                  });
                                },
                              );
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
