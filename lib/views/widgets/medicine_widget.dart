import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:cms_app/controllers/cart_controller.dart';

class MedicineWidget extends StatelessWidget {
  final cartController = Get.put(CartController());

  MedicineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            onChanged: (value) {
              cartController.filterMedicine(value);
            },
            style: const TextStyle(color: Colors.black),
            decoration: const InputDecoration(
              labelText: 'Search',
            ),
          ),
        ),
        Expanded(
          child: Obx(() {
            final filteredMedicineList = cartController.filteredMedicineList;
            return ListView.builder(
                itemCount: filteredMedicineList.length,
                itemBuilder: (BuildContext context, int index) {
                  return MedicineCard(
                    index: index,
                    cartController: cartController,
                    filteredMedicineList: filteredMedicineList,
                  );
                });
          }),
        ),
      ]),
    );
  }
}

class MedicineCard extends StatelessWidget {
  final int index;
  final CartController cartController;
  final filteredMedicineList;
  const MedicineCard(
      {super.key,
      required this.index,
      required this.cartController,
      required this.filteredMedicineList});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.medication),
        title: Text(filteredMedicineList[index].genericName),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(filteredMedicineList[index].activeIngredientName),
            Row(
              children: [
                Text("${filteredMedicineList[index].priceOut3} VND"),
                const Text("/"),
                Text(filteredMedicineList[index].volume3.toString())
              ],
            ),
          ],
        ),
        trailing: Obx(() => GestureDetector(
              onTap: () {
                cartController.addMedicine(filteredMedicineList[index]);
              },
              child: (cartController.medicinesInCart
                      .containsKey(filteredMedicineList[index]))
                  ? const Icon(
                      Icons.assignment_add,
                      color: Colors.blue,
                    )
                  : const Icon(Icons.assignment_add),
            )),
      ),
    );
  }
}
