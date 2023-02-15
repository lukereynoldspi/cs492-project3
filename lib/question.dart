import 'package:flutter/material.dart';
import 'dart:math';

class Question extends StatelessWidget {
  const Question({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          alignment: Alignment.topCenter,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "Call Me... Maybe?",
                  style: TextStyle(fontSize: 40),
                ),
                InkWell(
                  child: Container(
                    child: const Text(
                      "Ask a question... Tap for the answer!",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  onTap: () {
                    var listItem = [
                      "Give up",
                      "No",
                      "Yes",
                      "You'll never see your son again",
                      "Nah",
                      "Are you crazy?",
                      "Have you tried Arby's Meat Mountain?",
                      "Maybe"
                    ];

                    Random random = Random();
                    int randomIndex = random.nextInt(listItem.length);
                    final randomItem = listItem[randomIndex];
                  },
                ),
              ]),
        ),
      ),
    );
  }
}
