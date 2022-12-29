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
                  decoration: const BoxDecoration(
                      color: Color(0xFF1a1e3f),
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(60))),
                child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: const[
                    RichText(text: TextSpan(
                      text: 
                    ))
                  ],
                ),
                ),
                )
                )
          ],
        ),
      ),
        );
  }
}
