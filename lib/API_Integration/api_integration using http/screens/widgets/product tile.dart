import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_june2/API_Integration/api_integration%20using%20http/model/product_model.dart';

class ProductTile extends StatelessWidget {
  final ProductModel product;
 ProductTile(this.product);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Container(
            height: 180,
              width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(5)
              )
            ),
              child: CachedNetworkImage(imageUrl: product.image!,
              fit: BoxFit.contain,
              ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            product.title!,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Text(
            '${product.price!},\$',
            style: const TextStyle(fontSize: 15),
          )
        ],
      ),
    );
  }
}
