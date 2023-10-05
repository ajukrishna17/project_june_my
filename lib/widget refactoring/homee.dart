import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: refachome(),
  ));
}

class refachome extends StatelessWidget {
  const refachome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('gridview using refactoring'),
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) {
            return MyWidget();
          }),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset("assets/images/donut1.jpg",),
          const Text("Donut"),
          const Text("\$ 10"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(onPressed: () {},
                icon: const Icon(Icons.favorite),
                label: Text('Wishlist')),
              const SizedBox(
                width: 10,
              ),
              ElevatedButton.icon(onPressed: () {},
                  icon: const Icon(Icons.shopping_cart),
                  label: const Text("Buy Now")),
            ],
          )
        ],
      ),
    );
  }
}