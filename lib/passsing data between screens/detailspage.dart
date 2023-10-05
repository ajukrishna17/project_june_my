import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_june2/passsing%20data%20between%20screens/dummy%20data.dart';

class ProductDetails extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final productid=ModalRoute.of(context)?.settings.arguments;

    final productFromList=products.firstWhere((element) => element['id']==productid);

    return Scaffold(
      appBar: AppBar(
        title: Text(productFromList['name']),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(productFromList['image1'])
            ),
          )

      ),
          Text(
              productFromList['name'],
            style: const TextStyle(fontSize: 40),
          ),
          Text(
            productFromList['description'],
            style: const TextStyle(fontSize: 40),
          ),
          Text('${productFromList['rating']}',
            style: const TextStyle(fontSize: 40),
          ),
          Text('${productFromList['price']}',
            style: const TextStyle(fontSize: 40),
          ),
      ]
      )
      );
  }
}
