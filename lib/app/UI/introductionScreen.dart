
import 'package:flutter/material.dart';

import 'dialogScreen1.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({super.key});

@override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<IntroductionScreen> {
  String textToShow = "";
  String fullText =
      "bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla";
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _animateText();
  }

  _animateText() {
    if (currentIndex < fullText.length) {
      setState(() {
        textToShow += fullText[currentIndex];
        currentIndex++;
      });

      Future.delayed(const Duration(milliseconds: 30), () {
        _animateText();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        body: Column(
            children: ([
          Padding(
              padding: EdgeInsets.only(
                right: MediaQuery.of(context).size.width * 0.2,
                left: MediaQuery.of(context).size.width * 0.2,
                bottom: MediaQuery.of(context).size.height * 0.05,
                top: MediaQuery.of(context).size.height* 0.65,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                    MediaQuery.of(context).size.width * 0.02),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width * 0.6,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 56, 55, 55),
                        width: MediaQuery.of(context).size.width * 0.01),
                    borderRadius: BorderRadius.circular(
                        MediaQuery.of(context).size.width * 0.02),
                  ),
                  child: SingleChildScrollView(
                      child: Column(
                    children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(textToShow,
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.02,
                                  fontFamily: '8BitOperatorJVE'))),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const DialogScreen1(),
                                  ));
                            },
                            child: Container(
                                color: const Color.fromARGB(255, 52, 73, 82),
                                child: const Icon(Icons.arrow_forward))),
                      )
                    ],
                  )),
                ),
              )),
        ])));
  }
}
