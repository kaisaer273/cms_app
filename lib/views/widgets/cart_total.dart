import 'package:flutter/material.dart';

class CartTotal extends StatelessWidget {
  const CartTotal({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Text(
              "Tổng: ",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(77, 171, 150, 1)),
            ),
          ),
          SizedBox(
            height: double.infinity,
            child: ElevatedButton.icon(
                label: const Text(
                  "THANH TOÁN",
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                onPressed: () {},
                icon: const Icon(Icons.shopping_cart_checkout)),
          )
        ],
      ),
    );
  }
}
