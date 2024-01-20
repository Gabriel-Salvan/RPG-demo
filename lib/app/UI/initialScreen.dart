import 'package:flutter/material.dart';
import 'pageSelector.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.1,
              vertical: MediaQuery.of(context).size.height * 0.03),
          child: SizedBox(
            child: Center(
              child: Text(
                "Welcome",
                maxLines: 1,
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontSize: MediaQuery.of(context).size.width * 0.1,
                    fontFamily: '8BitOperatorJVE'),
              ),
            ),
          )),
      Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width*0.1,
          vertical: MediaQuery.of(context).size.height*0.005
        ),
        child: Icon(
          Icons.screen_rotation,
          size: MediaQuery.of(context).size.height*0.1,)),
      Padding(
        padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width*0.3,
          right: MediaQuery.of(context).size.width * 0.3,

        ),
        child: Text(
          "Recomendamos o uso da tela na horizontal para a melhor experiencia",
          maxLines: 2,
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.width*0.02,
            fontFamily: "8BitOperatorJVE",),)),
      Padding(
          padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.2,
              right: MediaQuery.of(context).size.width * 0.2,
              top: MediaQuery.of(context).size.height*0.05),
          child: ClipRRect(
            borderRadius:
                BorderRadius.circular(MediaQuery.of(context).size.width * 0.02),
            child: Container(
              color: const Color.fromARGB(255, 35, 38, 49),
              padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 0.02,
                  horizontal: MediaQuery.of(context).size.width * 0.02),
              child: TextField(
                maxLines: 1,
                decoration: const InputDecoration(
                    labelText: ('Qual teu nome mermão???')),
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.02,
                    fontStyle: FontStyle.italic,
                    color: const Color.fromARGB(255, 255, 255, 255)),
              ),
            ),
          )),
      Padding(
        padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.02,
            horizontal: MediaQuery.of(context).size.width * 0.03),
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PageSelector(
                          route: 1,
                        )),
              );
            },
            child: Text(
              'Continue',
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.03,
                  fontWeight: FontWeight.bold),
            )),
      )
    ]));
  }
}
