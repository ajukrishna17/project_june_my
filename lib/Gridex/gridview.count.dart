import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: GridviewCount(),));
}

class GridviewCount extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gridview count'),
      ),
      body: GridView.count(crossAxisCount: 3,
      children: List.generate(15, (index) => const Card(
    child: Center(
    child: Text("Sirajuuu"),
    ),
    ))
      ),
    );
  }
}
