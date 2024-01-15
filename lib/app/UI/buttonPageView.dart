import 'package:flutter/material.dart';
import '../Models/list.dart';
import '../Models/models.dart';
import 'pageSelector.dart';

class ButtonPageView extends StatelessWidget {
  final ButtonPage page;
  const ButtonPageView({super.key, required this.page});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        body: Column(
            children: ([
          Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.2,
                  left: MediaQuery.of(context).size.width * 0.45,
                  right: MediaQuery.of(context).size.width * 0.2),
              child: Image.asset(
                page.imagePath,
                height: MediaQuery.of(context).size.height * 0.45,
                width: MediaQuery.of(context).size.width * 0.25,
              )),
          Padding(
              padding: EdgeInsets.only(
                right: MediaQuery.of(context).size.width * 0.2,
                left: MediaQuery.of(context).size.width * 0.2,
                bottom: MediaQuery.of(context).size.height * 0.05,
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            if (routes[page.button1.routeToGo] != null) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => PageSelector(
                                        route: page.button1.routeToGo),
                                  ));
                            }
                          },
                          child: Container(
                              color: const Color.fromARGB(255, 52, 73, 82),
                              child: Text(page.button1.buttonText))),
                      ElevatedButton(
                          onPressed: () {
                            if (routes[page.button2.routeToGo] != null) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => PageSelector(
                                        route: page.button2.routeToGo),
                                  ));
                            }
                          },
                          child: Container(
                            color: const Color.fromARGB(255, 52, 73, 82),
                            child: Text(page.button2.buttonText),
                          )),
                    ],
                  ),
                ),
              )),
        ])));
  }
}
