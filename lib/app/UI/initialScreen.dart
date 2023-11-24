import 'package:flutter/material.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Padding(padding: EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width*0.2, vertical:MediaQuery.of(context).size.height*0.03),
              child: Text("Welcome", 
                maxLines: 1, 
                style: TextStyle(
                  fontWeight: FontWeight.bold, 
                  color: Colors.white10, 
                  fontSize: MediaQuery.of(context).size.width*0.2),)),
    );
  }
}