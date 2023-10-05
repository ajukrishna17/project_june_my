
import 'package:flutter/material.dart.';

void main(){
  runApp(MaterialApp(home : Splash2()));
}

class Splash2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent,
        body: Container(
        decoration: const BoxDecoration(
          // gradient: LinearGradient(
          //   begin: Alignment.bottomLeft,end: Alignment.bottomRight,
          //     colors:[
          //       Colors.white,
          //       Colors.yellowAccent,
          //     ]
          // )
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/underwater-1.png')
          )
        ),
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Icon(Icons.cake, size: 80, color: Colors.green,),
                  Image.asset('assets/icons/Iconarchive-Incognito-Animal-2-Octopus.512.png'),
                  Text('DR.OCTOPUS',
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic

                      )
                  )
                ]
            )
        )
    )
    );
  }
}
