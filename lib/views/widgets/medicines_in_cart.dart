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
          child: cartController.medicinesInCart.length > 0
              ? ListView.builder(
                  itemCount: cartController.medicinesInCart.length,
                  itemBuilder: (BuildContext context, int index) {
                    return MedicineInCartCard(
                      cartController: cartController,
                      medicine:
                          cartController.medicinesInCart.keys.toList()[index],
                      index: index,
                      quantity:
                          cartController.medicinesInCart.values.toList()[index],
                    );
                  })
              : const Center(
                  child: Text(
                    "Chưa có thuốc",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 152, 147, 135)),
                  ),
                ),
        ));
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
    // return Card(
    //   child: ListTile(
    //     leading: Text('${index+1}'),
    //     title: Text(medicine.genericName),
    //     subtitle: Text(medicine.activeIngredientName),
    //     trailing: SizedBox(
    //       width: context.width * 0.3,
    //       height: double.infinity,
    //       child: Row(
    //         mainAxisAlignment: MainAxisAlignment.end,
    //         children: [
    //           IconButton(
    //               onPressed: () {cartController.decreMedicine(medicine);}, icon: const Icon(Icons.remove_circle)),
    //           Text('$quantity'.padLeft(2,'0')),
    //           IconButton(onPressed: () {cartController.increMedicine(medicine);}, icon: const Icon(Icons.add_circle))
    //         ],
    //       ),
    //     ),
    //   ),
    // );
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    flex: 15,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          medicine.genericName,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                        Text(medicine.activeIngredientName,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: const TextStyle(
                              fontWeight: FontWeight.w200,
                              fontSize: 16,
                            )),
                        Row(
                          children: [
                            const Expanded(flex: 1, child: Text("Số lượng")),
                            Expanded(
                              flex: 1,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        cartController.decreMedicine(medicine);
                                      },
                                      icon: const Icon(
                                        Icons.remove_circle,
                                        color: Colors.black54,
                                      )),
                                  Text(
                                    '$quantity'.padLeft(2, '0'),
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w600),
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        cartController.increMedicine(medicine);
                                      },
                                      icon: const Icon(
                                        Icons.add_circle,
                                        color: Colors.black54,
                                      ))
                                ],
                              ),
                            ),
                            Expanded(
                                flex: 1,
                                child: Container(
                                    alignment: Alignment.centerRight,
                                    child: Text(medicine.volume3)))
                          ],
                        ),
                        Container(
                            alignment: Alignment.centerRight,
                            child:
                                Text("Giá: ${medicine.priceOut3 * quantity}"))
                      ],
                    )),
                Expanded(
                    flex: 1,
                    child: GestureDetector(
                        onTap: () {
                          cartController.removeMedicine(medicine);
                        },
                        child: const Icon(Icons.close)))
              ],
            ),
            const TextField(
              decoration: InputDecoration(
                hintText: "Ghi chú",
                isDense: true,
              ),
            )
          ],
        ),
      ),
    );
  }
}
