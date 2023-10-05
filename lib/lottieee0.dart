import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main(){
  runApp(MaterialApp(home: LotAnim(),));
}

class LotAnim extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lottie'),
      ),
      body: ListView(
        children: [
          Lottie.asset('assets/anima1/animation_ll3hva9p.json'),
          Lottie.network('https://lottie.host/3bb19e10-a5fc-4371-b957-0f6cb5868366/vEpmqTd8I5.json')
        ],
      ),
    );
  }
}
