import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

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
            child: Column(children: [
              const SizedBox(
                height: 50,
                width: 50,
                child: Placeholder(),
              ),
              const Padding(
                  padding: EdgeInsets.all(15), child: Text("Luke Reynolds")),
              const Text("OSU Student, Creative Clown"),
              const Text("\n123 456 7890\n"),
              SizedBox(
                width: 600,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      InkWell(
                        onTap: _launchURL,
                        child: Text(
                          'My Github',
                          style: TextStyle(
                            color: Color.fromARGB(255, 243, 33, 33),
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: _launchEmail,
                        child: Text(
                          'My Email',
                          style: TextStyle(
                            color: Color.fromARGB(255, 243, 33, 33),
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ]),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

_launchURL() async {
  Uri url = Uri.parse('lukereynolds.github.io');
  if (await launchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchEmail() {
  final Uri emailLaunchUri = Uri(
    scheme: 'mailto',
    path: 'our.email@gmail.com',
    queryParameters: {
      'subject': 'Testing subject',
      'body': 'Testing body text'
    },
  );
  launchUrl(emailLaunchUri);
}
