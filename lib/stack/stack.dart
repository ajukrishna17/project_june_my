import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: stack1(),));
}

class stack1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack1'),
      ),
      body: Stack(
        children: [
          Container(
            height: 200,
            width: 200,
            color: Colors.red,
          ),
          Positioned(
            left: 20,
            top: 20,
            child: Container(
              height: 50,
              width: 50,
              color: Colors.green,
            ),
          ),
          Positioned(
            left: 50,
            right: 50,
            top: 80,
            bottom: 50,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.yellow,
            ),
          ),
          Positioned(
            left:20,
            bottom:20,
            child:
            Container(
              height: 50,
              width: 50,
              color: Colors.purple,
            ),
          ),
        ],
      ),
    );
  }
}
