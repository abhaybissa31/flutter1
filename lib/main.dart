import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer()
  ),
  
  ));
}

class GradientContainer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.purple,
                Colors.deepPurple,
              ],
              begin: Alignment.topLeft,
              end:Alignment.bottomRight,
            )
          ),
          child:const Center(
            child: Text(
              "Hello World!",
              style: TextStyle(
                color: Colors.white,
                fontSize: 28
              ),
            ),
          ),
        );
  }
}