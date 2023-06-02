import 'package:cms_app/views/widgets/medicines_in_cart.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: MedicinesInCart()),
    );
  }
}
