import 'package:flutter/material.dart';

class InitialScreen extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Padding(padding: EdgeInsets.only(left:MediaQuery.of(context).size*0.2;,right:MediaQuery.of(context).size*0.2;,bottom:MediaQuery.of(context).size*0.2;,top:MediaQuery.of(context).size*0.2; ),
              child: Text("Welcome", 
                maxLines: 1, 
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black12),)),
    );
  }
}