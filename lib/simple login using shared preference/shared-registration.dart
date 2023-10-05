import 'package:flutter/material.dart';
import 'package:project_june2/simple%20login%20using%20shared%20preference/shared-login.dart';

void main() {
  runApp(MaterialApp(
    home: Registrationpg(),
  ));
}

class Registrationpg extends StatefulWidget {
  const Registrationpg({super.key});

  @override
  State<Registrationpg> createState() => _RegistrationpgState();
}

class _RegistrationpgState extends State<Registrationpg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)
                  ),
                  prefixIcon: Icon(Icons.person),
                  labelText: "Username"),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)
                  ),
                  labelText: "Email ID",
                  prefixIcon: Icon(Icons.email_outlined)
              ),

            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)
                  ),
                  prefixIcon: Icon(Icons.visibility),
                  labelText: "Password"
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed:(){Navigator.pushReplacement(context,
                MaterialPageRoute(
                    builder: (context) => LoginShared()));
               }, child: Text("Register"),
            )
          ],
        ),
      ),
    );
  }
}