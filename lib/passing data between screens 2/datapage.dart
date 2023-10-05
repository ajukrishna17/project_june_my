import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_june2/passing%20data%20between%20screens%202/to%20stateful%20page.dart';
import 'package:project_june2/passing%20data%20between%20screens%202/to%20stateless%20page.dart';

void main(){
  runApp(MaterialApp(home: DataPage(),));
}

class DataPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Passing Data between Screens using constructor'),
      ),
      body: Container(
        alignment: Alignment.center,
        height: 250,
        child: Column(
          children: [
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(
                  builder: (context) => StateLess(name:'Luminar',location:'Kakkanad',phone:9853756399)));
            },
                child: Text('To Stateless Page')),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>StatefulPage(
                  name:'Luminar',location:'Kakkanad',phone:9853756399
              )));
            }, child: Text("To Stateful Page"))
          ],
        ),
      ),
    );
  }
}
