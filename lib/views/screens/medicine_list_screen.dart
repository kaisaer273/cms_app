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
          child: Column(
        children: [
          const MedicineWidget(),
          ElevatedButton(
              onPressed: () => Get.to(() => const CartScreen()),
              child: const Text('Go to Cart'))
        ],
      )),
    );
  }
}
