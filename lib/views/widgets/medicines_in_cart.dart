import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:cms_app/models/medicine_model.dart';
import 'package:cms_app/controllers/cart_controller.dart';

class MedicinesInCart extends StatelessWidget {
  final CartController cartController = Get.find();
  MedicinesInCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => Padding(
      padding: const EdgeInsets.all(8.0),
      child: cartController.medicinesInCart.length>0 ? ListView.builder(
            itemCount: cartController.medicinesInCart.length,
            itemBuilder: (BuildContext context, int index) {
              return MedicineInCartCard(
                cartController: cartController,
                medicine: cartController.medicinesInCart.keys.toList()[index],
                index: index,
                quantity: cartController.medicinesInCart.values.toList()[index],
              );
            }) : const Center(child: Text("Chưa có thuốc",style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 152, 147, 135)),),),
    )
    
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
        leading: Text('${index+1}'),
        title: Text(medicine.genericName),
        subtitle: Text(medicine.activeIngredientName),
        trailing: SizedBox(
          width: context.width * 0.3,
          height: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                  onPressed: () {cartController.decreMedicine(medicine);}, icon: const Icon(Icons.remove_circle)),
              Text('$quantity'.padLeft(2,'0')),
              IconButton(onPressed: () {cartController.increMedicine(medicine);}, icon: const Icon(Icons.add_circle))
            ],
          ),
        ),
      ),
    );
  }
}
