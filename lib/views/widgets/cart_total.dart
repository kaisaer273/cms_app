import 'package:cms_app/controllers/cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartTotal extends StatelessWidget {
  CartController cartController = Get.find();
  CartTotal({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                "Tổng:   ${cartController.totalPrice}   VNĐ",
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(77, 171, 150, 1)),
              ),
            ),
            SizedBox(
              height: double.infinity,
              child: ElevatedButton.icon(
                  label: const Text(
                    "Thanh toán",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  onPressed: () {},
                  icon: const Icon(Icons.shopping_cart_checkout)),
            )
          ],
        ),
      ),
    );
  }
}
