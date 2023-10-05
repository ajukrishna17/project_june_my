import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

void main(){
  runApp(MaterialApp(home: RiveEx(),));
}

class RiveEx extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: RiveAnimation.asset("assets/anima1/emoji.riv",
        fit: BoxFit.cover,
        ),
      ),

    );
  }
}
