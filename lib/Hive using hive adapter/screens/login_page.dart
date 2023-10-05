import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:project_june2/Hive%20using%20hive%20adapter/screens/Register_page.dart';

import '../models/user_model.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
 // Hive.registerAdapter();
  await Hive.openBox<User>('userData');
  runApp(MaterialApp(home: loginhome(),));
}



class loginhome extends StatelessWidget {
  final email = TextEditingController();
  final pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: TextField(
            controller: pass,
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "password"),
          ),
        ),
        ElevatedButton(onPressed: (){},
            child: const Text("Login")),
        TextButton(onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context)=>RegistrationHive()));
        },
            child: const Text("Not a user? Register Here!!!"))
      ],
      ),
    );
  }
}