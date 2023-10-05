import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(home: SingleStory(),));
}

class SingleStory extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Single Story'),
      ),
      body: Column(
        children: [
          Text(
            'THE WITCHER',
            style: GoogleFonts.creepster(
              fontWeight: FontWeight.bold,
              fontSize: 50,
              color: Colors.black
            ),
          ),
          Expanded(child: SingleChildScrollView(
            child: const Text("""The Witcher (Polish: Wiedźmin pronounced [ˈvʲɛd͡ʑmʲin]) is a series of six fantasy novels and 15 short stories written by Polish author Andrzej Sapkowski. The series revolves around the eponymous "witcher", Geralt of Rivia. In Sapkowski's works, "witchers" are beast hunters who are given supernatural abilities at a young age to battle wild beasts and monsters. The Witcher began with a titular 1986 short story that Sapkowski entered into a competition held by Fantastyka magazine, marking his debut as an author. Due to reader demand, Sapkowski wrote 14 more stories before starting a series of novels in 1994. Known as The Witcher Saga, he wrote one book a year until the fifth and final installment in 1999. A standalone prequel novel, Season of Storms, was published in 2013.

The books have been described as having a cult following in Poland and Central and Eastern European countries. They have been translated into 37 languages and sold over 15 million copies worldwide as of December 2019. They have also been adapted into a film (The Hexer), two television series (The Hexer and The Witcher), a video game series, and a series of comic books. The video games have been even more successful, with more than 50 million copies sold as of May 2020"""),
          ))
        ],
      ),
    );
  }
}
