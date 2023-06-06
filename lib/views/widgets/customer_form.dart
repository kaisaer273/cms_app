import 'package:flutter/material.dart';

class CustomerForm extends StatelessWidget {
  const CustomerForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(
                isDense: true,
                hintText: "Khách hàng",
                focusedBorder: UnderlineInputBorder(),
              ),
            ),
            Row(
              children: const [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      isDense: true,
                      hintText: "Tuổi",
                      focusedBorder: UnderlineInputBorder(),
                    ),
                  ),
                ),
                Expanded(child: Text("tuổi")),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      isDense: true,
                      hintText: "Cân nặng",
                      focusedBorder: UnderlineInputBorder(),
                    ),
                  ),
                ),
                Expanded(child: Text("Kg")),
              ],
            ),
            const TextField(
              decoration: InputDecoration(
                isDense: true,
                hintText: "SĐT",
                focusedBorder: UnderlineInputBorder(),
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                isDense: true,
                hintText: "Địa chỉ",
                focusedBorder: UnderlineInputBorder(),
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                isDense: true,
                hintText: "Chẩn đoán",
                focusedBorder: UnderlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
