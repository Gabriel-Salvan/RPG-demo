import 'package:flutter/material.dart';
import 'package:rpgdemo/app/UI/pageSelector.dart';
import '../Models/list.dart';
import '../Models/models.dart';

class RollingText extends StatefulWidget {
  final TextPage textPage;
  const RollingText({super.key, required this.textPage});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<RollingText> {
  String textToShow = "";
  String fullText = "";
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    fullText = widget.textPage.textToShow;
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
                  top: MediaQuery.of(context).size.height * 0.2,
                  left: MediaQuery.of(context).size.width * 0.45,
                  right: MediaQuery.of(context).size.width * 0.2),
              child: Image.asset(
                widget.textPage.imagePath,
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
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                textToShow,
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.02,
                                    fontFamily: '8BitOperatorJVE'),
                              )),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding:EdgeInsets.symmetric(
                                horizontal:MediaQuery.of(context).size.width*0.02 ,
                                vertical:MediaQuery.of(context).size.height*0.014 ,
                              ),
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color.fromARGB(255, 52, 73, 82)
                                  ),
                                  onPressed: () {
                                    if (routes[widget.textPage.routeToGo] !=
                                        null) {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => PageSelector(
                                                route: widget.textPage.routeToGo),
                                          ));
                                    }
                                  },
                                  child: const Icon(Icons.arrow_forward)),
                            ),
                          )
                        ],
                      ),
                    ),
                  ))),
        ])));
  }
}
