import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: ListView_Custom()));
}

class ListView_Custom extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView Custom'),
        ),
        body:ListView.custom(childrenDelegate: SliverChildBuilderDelegate((context, index) => Text('data'))),

    );
  }
}
