import 'package:flutter/material.dart';

import 'package:cms_app/views/widgets/cart_total.dart';
import 'package:cms_app/views/widgets/customer_form.dart';
import 'package:cms_app/views/widgets/medicines_in_cart.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            const SizedBox(
              height: 220,
              child: CustomerForm(),
            ),
            Flexible(
              child: MedicinesInCart(),
            ),
            SizedBox(
              height: 70,
              child: CartTotal(),
            ),
          ],
        ),
      ),
    );
  }
}
