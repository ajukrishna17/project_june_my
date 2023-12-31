import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MaterialApp(home: Refractoring3(),));
}
class Refractoring3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Refactoring 3"),
      ),
      body: GridView.builder(
          gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context,index){
            return MyRefractoringWidget(
              rimage: Image.asset("assets/images/donut.jpg"),
            label: Text('Donut',
            style: GoogleFonts.damion(
              fontSize: 30,color: Colors.yellow
            ),
            ),
              onClick: () {},
            );
          }),
    );
  }
}
class MyRefractoringWidget extends StatelessWidget {
  final Color? bgcolor;
  final Image? rimage;
  VoidCallback? onClick;
  Widget? label;
  Widget? ricon;

  MyRefractoringWidget({
    this.bgcolor,
    required this.rimage,
    this.label,
    this.onClick,
    this.ricon
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      color:  bgcolor,
      child: ListTile(
        title: label,
        leading: rimage,
        onTap: onClick,
        trailing: ricon,
      ),
    );
  }

}
