import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: ListView_Seperated(),
  ));
}

class ListView_Seperated extends StatelessWidget {
  const ListView_Seperated({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ListView_Seperated'),),
      body: ListView.separated(itemBuilder: (context,index){
        return const SizedBox(
          height:30,
          child: Text(
          'January'
        ),
        );
      },
          separatorBuilder: (context, index){
            if(index % 4 == 0){
              return const Card(
                color: Colors.red,
                child: Text('Advertisment'),
              );
            } else {
              return const SizedBox();
            }
          },
          itemCount: 10),
    );
  }
}
