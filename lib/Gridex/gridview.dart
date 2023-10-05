import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: GridView1(),));
}

class GridView1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text('My Gridview'),),
      body: GridView(gridDelegate:
      SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 85),
      // SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      children: List.generate(15, (index) =>const Card(
        color: Colors.red,
        child: Center(
          child: Icon(Icons.ac_unit_rounded),
        ),
      ))


      ),
    );
  }
}
