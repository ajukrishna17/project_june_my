import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: GridviewUI(),));
}

class GridviewUI extends StatelessWidget {
  var color=[Colors.teal,Colors.red,Colors.green,Colors.orange,Colors.yellowAccent,Colors.blue,Colors.pink,Colors.purple,Colors.grey,Colors.brown,Colors.orangeAccent,Colors.cyan];
  var icon=[Icons.home,Icons.do_not_disturb_on_total_silence,Icons.camera,Icons.bookmark,Icons.wifi,Icons.save,Icons.call,Icons.message,Icons.window,Icons.card_giftcard,Icons.voice_chat_outlined,Icons.save_alt_outlined];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gridview UI'),
      ),
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
      mainAxisSpacing: 10,
        crossAxisSpacing: 12
      ),
          itemCount: 12,
          itemBuilder:(context,index){
        return SizedBox(
          child: Container(
            height: 5,width: 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: color[index],
            ),
            child: Center(
              child: Row(
  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(icon[index]),
                  SizedBox(width: 15,),
                  Text('Heart Shaker'),
                ],
              ),
            ),
          ),
        );
          }
    )
    );
  }
}
