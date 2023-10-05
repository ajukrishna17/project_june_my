import 'package:flutter/material.dart';
import 'package:project_june2/Gridex/gridview.dart';

void main(){
  runApp(MaterialApp(home: Gridview2(),));
}

class Gridview2 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gridview Builder'),
      ),
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemCount: 15,
          itemBuilder: (context,index){
            return Card(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('item'),
                    Icon(Icons.ac_unit)
                  ],
                ),
              ),
            );
          }),
    );
  }
}
