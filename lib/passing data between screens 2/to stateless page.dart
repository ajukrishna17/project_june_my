import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class StateLess extends StatelessWidget {
  int phone;
  final String location;
  final String name;
  StateLess({super.key, required this.name, required this.location, required this.phone});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Received Data'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              name,style: GoogleFonts.aboreto(fontSize: 30,color: Colors.purple),
            ),
            Text(
              location,style: GoogleFonts.aboreto(fontSize: 20,
            color: Colors.yellow),
            ),
            Text(
              '$phone',style: GoogleFonts.aboreto(fontSize: 15,
            color: Colors.green),
            )
          ],
        ),
      ),
    );
  }
}
