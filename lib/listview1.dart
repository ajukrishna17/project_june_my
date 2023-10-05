import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MaterialApp(
    home:ListView1()
  ));
}
class ListView1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listview Sample'),
      ),
      body: ListView(
        children:  [
          Center(
            child: Text(
              'Shop Here',
              style: GoogleFonts.satisfy(
                fontSize: 50, color:Colors.pink)
              ),
            ),
          ListTile(
            title: Text('shoe'),
            subtitle: Text('\$ 150'),
            leading: CircleAvatar(backgroundImage:NetworkImage('https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c2hvZXN8ZW58MHx8MHx8fDA%3D&w=1000&q=80')),
            trailing: Icon(Icons.shopping_cart),
          ),
          ListTile(
            title: Text('Shirts'),
            subtitle: Text('\$ 100'),
            leading:CircleAvatar(
                backgroundImage: NetworkImage('https://lp2.hm.com/hmgoepprod?set=quality%5B79%5D%2Csource%5B%2F9f%2Fdf%2F9fdfcc23665fe9e2b389b686a85cc9c97084d238.jpg%5D%2Corigin%5Bdam%5D%2Ccategory%5Bmen_shirts_longsleeved%5D%2Ctype%5BDESCRIPTIVESTILLLIFE%5D%2Cres%5Bm%5D%2Chmver%5B1%5D&call=url[file:/product/zoom]&zoom=zoom')),
            trailing: Icon(Icons.shopping_cart),
          ),
          ListTile(
            title: Text('T-Shirts'),
            subtitle: Text('\$ 100'),
            leading: CircleAvatar(
                backgroundImage: NetworkImage('https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1671134544-193-1671134538.png?crop=0.8256410256410256xw:1xh;center,top&resize=980:*')),
            trailing: Icon(Icons.shopping_cart),
          ),
        ],
      ),
    );
  }

}