import 'package:cms_app/models/medicine_model.dart';
import 'package:flutter/material.dart';

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

class MedicineCard extends StatefulWidget {
  final int index;

  const MedicineCard({super.key, required this.index});

  @override
  State<MedicineCard> createState() => _MedicineCardState();
}

class _MedicineCardState extends State<MedicineCard> {
  late bool inCart = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.medication),
        title: Text(MedicineModel.medicines[widget.index].genericName),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(MedicineModel.medicines[widget.index].activeIngredientName),
            Row(
              children: [
                Text("${MedicineModel.medicines[widget.index].priceOut3} VND"),
                const Text("/"),
                Text(MedicineModel.medicines[widget.index].volume3.toString())
              ],
            ),
          ],
        ),
        trailing: GestureDetector(
          onTap: () {
            setState(() {
              inCart = !inCart;
            });
          },
          child: inCart
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
