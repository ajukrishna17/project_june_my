import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: GridViewUI()));
}

class GridViewUI extends StatelessWidget {
  var image=['https://images.unsplash.com/photo-1584917865442-de89df76afd3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YmFnfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60','https://images.unsplash.com/photo-1511499767150-a48a237f0083?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c3VuZ2xhc3N8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60','https://images.unsplash.com/photo-1664286021284-e921c76ac1a4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bWVucyUyMGJlbHR8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60','https://images.unsplash.com/photo-1589128777073-263566ae5e4d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8bmVja2xhY2V8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60','https://images.unsplash.com/photo-1630019852942-f89202989a59?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8ZWFyaW5nc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60','https://images.unsplash.com/photo-1613151848917-80e67f421fff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHNvY2tzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60'];
  var name=['Vagabond Sack','Stella','Whitney belt','Garden Strand','Strut earings','VArsity socks'];
  var price=['\$120','\$58','\$35','\$98','\$34','\$12'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SHRINE'),
        leading: Icon(Icons.more_vert_rounded),
        actions: [Icon(Icons.search),Icon(Icons.settings)],
      ),
      body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
          crossAxisSpacing: 15,mainAxisSpacing: 10),
          childrenDelegate: SliverChildListDelegate(List.generate(6, (index) => Padding(padding: EdgeInsets.all(8.0),
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 300,
                  width: 420,
                  decoration: BoxDecoration(
                    image: DecorationImage(fit: BoxFit.contain,
                      image: NetworkImage(image[index])
                    )
                  ),
                ),
                Text(name[index]),
                Text(price[index])
              ],

          ))),

      )),
    );
  }
}
