import 'package:flutter/material.dart';
import 'package:rpgdemo/app/UI/initialScreen.dart';
import '../Models/models.dart';

class EndPageView extends StatelessWidget {
  final EndPage page;
  const EndPageView({super.key, required this.page});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color.fromARGB(255, 0, 0, 0),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding( 
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width* 0.1,
                vertical: MediaQuery.of(context).size.height* 0.03,
              ),
              child: Text(
                page.textToShow1,
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width*0.08,
                  fontFamily: "8BitOperatorJVE",
                ),),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width* 0.1,
                right: MediaQuery.of(context).size.width* 0.1,
                bottom: MediaQuery.of(context).size.height*0.03,
              ),
              child: Image.asset(
                page.imagePath,
                height: MediaQuery.of(context).size.height*0.5,
              )),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width* 0.1,
                right: MediaQuery.of(context).size.width* 0.1,
              ),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  page.textToShow2,
                  style: TextStyle(
                    fontFamily: "8BitOperatorJVE",
                    fontSize: MediaQuery.of(context).size.width*0.025
                  ),),)),
            Padding(
              padding: EdgeInsets.all(
                MediaQuery.of(context).size.width*0.03
              ),
              child: Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 52, 73, 82)
                  ),
                  onPressed: (){
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context) => const InitialScreen()));
                  }, 
                  child: Text(
                    "Restart",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width*0.02
                    ),))
              ))
          ],)
        ,
      ),
    );
  }
}
