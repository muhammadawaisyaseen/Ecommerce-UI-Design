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
