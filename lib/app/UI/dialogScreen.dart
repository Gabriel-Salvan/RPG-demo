
import 'package:flutter/material.dart';

class DialogScreen extends StatelessWidget {
  const DialogScreen({super.key});

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body:
        Column(children:([
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height*0.2,
              left: MediaQuery.of(context).size.width* 0.45,
              right: MediaQuery.of(context).size.width*0.2
            ),
            child:
              Image.network('',
              height: MediaQuery.of(context).size.height * 0.45,
              width: MediaQuery.of(context).size.width * 0.25,) ),
          Padding(
            padding:EdgeInsets.only(
              right: MediaQuery.of(context).size.width*0.2,
              left: MediaQuery.of(context).size.width*0.2,
              bottom: MediaQuery.of(context).size.height*0.05,),
            child:
              ClipRRect(
                borderRadius: 
                  BorderRadius.circular(MediaQuery.of(context).size.width* 0.005),
                clipBehavior: Clip.hardEdge,
                child:
                  Container(
                    height: MediaQuery.of(context).size.height*0.3,
                    width: MediaQuery.of(context).size.width*0.6,
                    color: Color.fromARGB(255, 56, 55, 55),
              )),
              )
            ])
      )
    );
    }
    }