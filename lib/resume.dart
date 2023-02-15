import 'package:flutter/material.dart';

class Resume extends StatelessWidget {
  const Resume({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 50.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "Luke Reynolds",
                    style: TextStyle(fontSize: 25),
                  ),
                  const Text(
                    "lukereynoldspi@gmail.com",
                  ),
                  const Text(
                    "lukereynoldspi.github.io",
                  ),
                  ResumeEntry(
                      position: "Lab Attendant",
                      company: "COCC",
                      time: "2000 - 3000",
                      location: "Bend, OR",
                      description:
                          "To be, or not to be: that is the question: whether 'tis nobler in the mind to suffer the slings and arrows of outrageous fortune, or to take arms against a sea of troubles, and by opposing end them?"),
                  ResumeEntry(
                      position: "Stargazer",
                      company: "Nintendo",
                      time: "2000",
                      location: "Bend, OR",
                      description:
                          "To be, or not to be: that is the question: whether 'tis nobler in the mind to suffer the slings and arrows of outrageous fortune, or to take arms against a sea of troubles, and by opposing end them?"),
                  ResumeEntry(
                      position: "Therapist",
                      company: "McDonalds",
                      time: "2000 - 3000",
                      location: "Bend, OR",
                      description:
                          "ho would by a sea of outrave, or wish'd. To die, thers the name of action is no more; forthy to gream: ay, those bodkin? Who would fard the pale cast of of of return awry, and natience off ther a sleep of somethe oppresolution. To disprises coward the rub; for no trave, or in the in that merit of?"),
                  ResumeEntry(
                      position: "McDonalds Laborer",
                      company: "Burger King",
                      time: "2018 - 2017",
                      location: "Bend, OR",
                      description:
                          "To be, or not to be: that is the question: whether 'tis nobler in the mind to suffer the slings and arrows of outrageous fortune, or to take arms against a sea of troubles, and by opposing end them?")
                ]),
          ),
        ),
      ),
    );
  }
}

class ResumeEntry extends StatelessWidget {
  String position;
  String company;
  String time;
  String location;
  String description;

  ResumeEntry(
      {super.key,
      required this.position,
      required this.company,
      required this.time,
      required this.location,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 300,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              position,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Text(
                company,
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
              Text(
                time,
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
              Text(
                location,
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ]),
            Text(description),
          ],
        ));
  }
}
