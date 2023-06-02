import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:cms_app/controllers/cart_controller.dart';
import 'package:cms_app/models/medicine_model.dart';

class MedicineWidget extends StatelessWidget {
  const MedicineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
          itemCount: MedicineModel.medicines.length,
          itemBuilder: (BuildContext context, int index) {
            return MedicineCard(index: index);
          }),
    );
  }
}

class MedicineCard extends StatelessWidget {
  final int index;
  final cartController = Get.put(CartController());
  MedicineCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.medication),
        title: Text(MedicineModel.medicines[index].genericName),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(MedicineModel.medicines[index].activeIngredientName),
            Row(
              children: [
                Text("${MedicineModel.medicines[index].priceOut3} VND"),
                const Text("/"),
                Text(MedicineModel.medicines[index].volume3.toString())
              ],
            ),
          ],
        ),
        trailing: GestureDetector(
          onTap: () {
            cartController.addMedicine(MedicineModel.medicines[index]);
            print(
                cartController.medicinesInCart[MedicineModel.medicines[index]]);
          },
          child: (cartController.medicinesInCart
                  .containsKey(MedicineModel.medicines[index]))
              ? const Icon(
                  Icons.assignment_add,
                  color: Colors.blue,
                )
              : const Icon(Icons.assignment_add),
        ),
      ),
    );
  }
}
