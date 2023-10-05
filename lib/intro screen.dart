import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:project_june2/25-06/splash2.dart';
import 'package:project_june2/statefullogin.dart';

void main(){
  runApp(MaterialApp(home: IntroScreen(),));
}

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PageDecoration pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.w900,fontSize: 40,color: Colors.purple
      ),
      bodyTextStyle: GoogleFonts.aBeeZee(
        fontStyle: FontStyle.italic,fontSize: 20,color: Colors.red
      ),
      boxDecoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.black,
          Colors.white70,
          Colors.white,
          Colors.grey
        ],
        begin: Alignment.bottomRight,
            end: Alignment.topLeft
        )
      )
    );
    return IntroductionScreen(
      pages: [
        PageViewModel(
          decoration: pageDecoration,
          title: 'First Page',
          body: 'Introduction Screen shows the details of the app and demo of pages',
          image: IntroImage('https://images.unsplash.com/photo-1541454337161-746ae6e34653?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OTF8fEludHJvJTIwaW1hZ2VzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60')
        ),
        PageViewModel(
            decoration: pageDecoration,
            title: 'Second Page',
            body: 'Introduction Screen shows the details of the app and demo of pages',
            image: IntroImage('https://images.unsplash.com/photo-1636093748403-1f93591807a1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTI4fHxJbnRybyUyMGltYWdlc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60')
        ),
        PageViewModel(
            decoration: pageDecoration,
            title: 'Third Page',
            body: 'Introduction Screen shows the details of the app and demo of pages',
            image: IntroImage('https://images.unsplash.com/photo-1600058644231-c99658f408ce?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTQ2fHxJbnRybyUyMGltYWdlc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60')
        ),


      ],
      onDone: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Splash2())),
      onSkip: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Login2())),
      showSkipButton: true,
      skip: Text('skip'),
      next: Icon(Icons.arrow_forward_rounded),
      done: Text('Done'),
      dotsDecorator: DotsDecorator(
        size: Size(10, 2),
        color: Colors.grey,
        activeSize: Size(25, 12),
        activeColor: Colors.yellow,
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
        )
      ),
    );
  }

Widget  IntroImage(String image) {
    return Align(
      alignment: Alignment.center,
      child: Image.network(image,height: 900,
      width: double.infinity,
      ),
    );
}
}
