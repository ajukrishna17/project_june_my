import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(home: atm(),));
}


class atm extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ATM'),
      ),
      body: Stack(
        children: [
          Center(
            child: Container(
              height: 300,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: const DecorationImage(fit: BoxFit.cover,
                image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2gOp_o0HxgwsnD2iyj3XXC2eFq5Q8KyYD6A&usqp=CAU')
                )
              ),
            ),
          ),
          Positioned(
            left: 50,
              top: 80,
              child: Row(
                children: [
                  Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.box,
                        size: 40,
                        color: Colors.white12,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Transform.rotate(angle: 90*pi/180,
                      child: const FaIcon(FontAwesomeIcons.wifi,
                      size: 40,
                        color: Colors.white12,
                      ),
                      )
                    ],
                  )
                ],
 )),
          Positioned(
              right: 20,
              top: 10,
              child: Text(
                'Fi',
                style: GoogleFonts.ptSerif(
                  color: Colors.white70,
                  fontSize: 50,
                  fontWeight: FontWeight.bold
                ),
              ))
        ],
      ),
    );
  }
}
