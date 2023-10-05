import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:project_june2/API_Integration/api_integration%20using%20http/controller/product_controller.dart';
import 'package:project_june2/API_Integration/api_integration%20using%20http/screens/widgets/product%20tile.dart';

void main(){
  runApp(GetMaterialApp(
    home: ProductHome(),
  ));
}

class ProductHome extends StatelessWidget {
  final ProductController productController=Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
      ),
      body: SizedBox(child: Obx(() {
        if(productController.isLoading.value){
          return const Center(child: CircularProgressIndicator(),);
        }else {
          return GridView.builder(
              itemCount: productController.productList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
              itemBuilder: (context,index){
            return ProductTile(productController.productList[index]);
              });
        }
    }

    )));
  }
}
