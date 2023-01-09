import 'package:flutter/material.dart';

class WesyScreen extends StatelessWidget {
  const WesyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text(
                  'usman',
                  style: TextStyle(fontSize: 42),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
