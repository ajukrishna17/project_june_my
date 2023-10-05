import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatefulPage extends StatefulWidget {
  final String name,location;
  int? phone;
  
  StatefulPage({super.key, required this.name, required this.location, required this.phone});

  @override
  State<StatefulPage> createState() => _StatefulPageState();
}

class _StatefulPageState extends State<StatefulPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(widget.name),
            Text(widget.location),
            Text('${widget.phone}')
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('To Stateful page'),
      ),
    );
  }
}
