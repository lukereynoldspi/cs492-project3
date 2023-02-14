import 'package:flutter/material.dart';

class BusinessCard extends StatelessWidget {
  const BusinessCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.all(50),
            child: SizedBox(
              height: 50,
              width: 50,
              child: Placeholder(
                child: Column(
                  children: const [
                    Text("Hello"),
                    Text("Hello"),
                    Text("Hello"),
                    Text("Hello"),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
