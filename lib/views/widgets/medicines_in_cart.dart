import 'package:cms_app/models/medicine_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:cms_app/controllers/cart_controller.dart';

class MedicinesInCart extends StatelessWidget {
  final CartController cartController = Get.find();
  MedicinesInCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: cartController.medicinesInCart.length,
          itemBuilder: (BuildContext context, int index) {
            return MedicineInCartCard(
              cartController: cartController,
              medicine: cartController.medicinesInCart.keys.toList()[index],
              index: index,
              quantity: cartController.medicinesInCart.values.toList()[index],
            );
          }),
    );
  }
}

class MedicineInCartCard extends StatelessWidget {
  final CartController cartController;
  final int index;
  final MedicineModel medicine;
  final int quantity;
  const MedicineInCartCard(
      {super.key,
      required this.cartController,
      required this.index,
      required this.medicine,
      required this.quantity});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Text('$quantity'),
        title: Text(MedicineModel.medicines[index].genericName),
        subtitle: Text(MedicineModel.medicines[index].activeIngredientName),
        trailing: SizedBox(
          width: context.width * 0.3,
          height: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.remove_circle)),
              Text('$quantity'),
              IconButton(onPressed: () {}, icon: const Icon(Icons.add_circle))
            ],
          ),
        ),
      ),
    );
  }
}
