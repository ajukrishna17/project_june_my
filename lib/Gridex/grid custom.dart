import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: GridCustom(),));
}

class GridCustom extends StatelessWidget {
  const GridCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid Custom'),
      ),
      body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), childrenDelegate: SliverChildListDelegate(
          List.generate(12, (index) => Center(
            child: Column(
              children: [
                Container(height: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                      image: NetworkImage('data:image/jpeg;base64,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'),),
                ),
                    ),
                Text('Item1'),
            Text('\$290')
              ]
          )

                  ),
                )
            ),
          ));
  }
}
