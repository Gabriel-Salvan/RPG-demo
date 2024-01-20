import 'package:flutter/material.dart';
import '../Models/list.dart';
import '../Models/models.dart';
import 'pageSelector.dart';

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
                  fontFamily: "lib/assets/fonts/8bitoperator_jve.ttf",
                ),),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width* 0.1,
                vertical: MediaQuery.of(context).size.height*0.03,
              ),
              child: Image.asset(
                page.imagePath,
                
              ))
          ],)
        ,
      ),
    );
  }
}
