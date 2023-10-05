import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

void main(){
  runApp(MaterialApp(
    home: DataHome(),
  ));
}

class DataHome extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Data Home'),),
        body: Obx(() => SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: controller.isNetConnected.value
          ?(controller.isLoading.value? loadAnimation() : getData())
          : noInternet(context),
    )
    );,
    );

  }
  Center loadAnimation(){
    return Center(
        child: SizedBox(
            width: 150,
            height: 150,
            child: Lottie.asset(''),


    }
}