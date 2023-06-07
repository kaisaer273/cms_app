import 'package:flutter/material.dart';

import '../widgets/medicine_widget.dart';

class MedicineListScreen extends StatelessWidget {
  const MedicineListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MedicineWidget(),
    );
  }
}
