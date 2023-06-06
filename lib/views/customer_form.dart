import 'package:flutter/material.dart';

class CustomerForm extends StatelessWidget {
  const CustomerForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: const [
            TextField(
              decoration: InputDecoration(
                isDense: true,
                hintText: "Họ tên Khách hàng",
              ),
            ),
            TextField(
              decoration: InputDecoration(isDense: true, hintText: "Giới tính"),
            ),
            TextField(
              decoration: InputDecoration(isDense: true, hintText: "Tuổi"),
            ),
            TextField(
              decoration: InputDecoration(isDense: true, hintText: "SĐT"),
            ),
            TextField(
              decoration: InputDecoration(isDense: true, hintText: "Địa chỉ"),
            ),
            TextField(
              decoration: InputDecoration(isDense: true, hintText: "Chẩn đoán"),
            ),
          ],
        ),
      ),
    );
  }
}
