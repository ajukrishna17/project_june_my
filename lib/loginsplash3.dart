import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("LoginPage"),
   ),
    body: Center(
     child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Padding(
           padding: const EdgeInsets.all(20.0),
           child: TextField(
           decoration: InputDecoration(
             border: OutlineInputBorder(),
             prefixIcon: Icon(Icons.people),
               hintText: "Username",
             helperText: "Username must be an email",
             labelText: "Username"
           ),
         ),
         ),
         Padding(
         padding: const EdgeInsets.all(20.0),
    child: TextField(
    decoration: InputDecoration(
    border: OutlineInputBorder(),
    prefixIcon: Icon(Icons.people),
    hintText: "Password",
    helperText: "Password must contain atleast 6 character",
    labelText: "Password"
    )
    )
         ),
    ]
    ),
     ),
   );
 }
}