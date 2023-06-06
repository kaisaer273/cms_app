import 'package:flutter/material.dart';

class CartTotal extends StatelessWidget {
  const CartTotal({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          const Text("data"),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.shopping_cart_checkout))
        ],
      ),
    );
  }
}
