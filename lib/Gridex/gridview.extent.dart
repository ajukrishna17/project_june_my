import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: GridviewExtent(),));
}

class GridviewExtent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gridview Extent'),
      ),
      body: GridView.extent(maxCrossAxisExtent: 80,
      children: List.generate(15, (index) => const Card(
        child: Center(
          child: Text("sanjeevaaa"),
        ),
      )),
      ),
    );
  }
}
