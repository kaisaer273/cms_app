import 'package:cms_app/views/customer_form.dart';
import 'package:cms_app/views/widgets/cart_total.dart';
import 'package:cms_app/views/widgets/medicines_in_cart.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
              flex: 4,
              child: Container(
                  color: const Color.fromARGB(255, 164, 228, 196),
                  child: const CustomerForm())),
          Expanded(
              flex: 7,
              child: Container(
                  color: Color.fromARGB(255, 6, 88, 202),
                  child: MedicinesInCart())),
          const Expanded(flex: 1, child: CartTotal()),
        ],
      )),
    );
  }
}
