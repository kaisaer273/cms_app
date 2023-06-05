import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/medicine_widget.dart';
import 'cart_screen.dart';

class MedicineListScreen extends StatelessWidget {
  const MedicineListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: MedicineWidget()),
          floatingActionButton: FloatingActionButton(onPressed: () => Get.to(() => const CartScreen()),child: const Icon(Icons.shopping_cart)),
    );
  }
}
