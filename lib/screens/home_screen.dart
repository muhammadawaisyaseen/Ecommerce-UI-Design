import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
