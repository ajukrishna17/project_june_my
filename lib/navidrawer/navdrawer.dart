import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Drawer_Ex(),));
}

class Drawer_Ex extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage('https://images.unsplash.com/photo-1605246811037-7a815fa646e4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8YmFjayUyMGdyb3VuZHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60'))
              ),
              accountName: Text('My Name'),
                accountEmail: Text("myname@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('https://images.unsplash.com/photo-1488161628813-04466f872be2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60'),
            ),
              otherAccountsPictures: [
                CircleAvatar(backgroundImage: NetworkImage('https://plus.unsplash.com/premium_photo-1688739352540-a75b102d8551?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1169&q=80'),
                ),
                CircleAvatar(backgroundImage: NetworkImage('https://plus.unsplash.com/premium_photo-1688739352540-a75b102d8551?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1169&q=80'),
                )
                  ],
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('Info'),
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Help'),
            ),
          ],
        ),
      ),
    );
  }
}
