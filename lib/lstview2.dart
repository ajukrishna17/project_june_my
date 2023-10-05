import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ListView2(),
  ));
}

class ListView2 extends StatelessWidget {
  var name = ['Food 1', 'Food 2', 'Food 3'];
  var image = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvxAJcSQRs2u2vkyS5GoKLm66Op0CqWt0rjg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-3WOWFIDeEMsEk2ARmMLoEkmsaFB-a_tyrA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxQfjge5wtYCjTFDS25TRV79nhA8dzjXOiDg&usqp=CAU',
  ];
  var price = [
    '50',
    '55',
    '60',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text('ListView2'),
        actions: [
          Icon(Icons.camera_alt),
          SizedBox(
            width: 15,
          ),
          Icon(Icons.search),
          PopupMenuButton(itemBuilder: (context) {
            return [
              PopupMenuItem(child: Text('Settings')),
              PopupMenuItem(child: Text('New Group')),
              PopupMenuItem(child: Text('Privacy')),
              PopupMenuItem(child: Text('Starred Food')),
            ];
          })
        ],
      ),
      body: ListView(
        children: List.generate(
          3,
          (index) => Card(
            child: ListTile(
              title: Text(name[index]),
              subtitle: Text('\$ ${price[index]}'),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(image[index]),
              ),
              trailing: const Wrap(
                direction: Axis.vertical,
                children: [
                  Text('1,20'),
                  SizedBox(
                    width: 25,
                  ),
                  CircleAvatar(
                    minRadius: 8,
                    maxRadius: 10,
                    backgroundColor: Colors.green,
                    child: Text('2'),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
