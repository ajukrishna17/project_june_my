import 'package:flutter/material.dart';

void main(){
  //runApp-attach our widget tree to the UI
  runApp(MaterialApp(home: SplashPage(),));
}
class SplashPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Splash Page')),
    );
  }

}