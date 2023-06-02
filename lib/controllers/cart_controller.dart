import 'package:get/get.dart';

import '../models/medicine_model.dart';

class CartController extends GetxController {
  final _medicinesInCart = {}.obs;

  void addMedicine(MedicineModel medicine) {
    if (_medicinesInCart.containsKey(medicine)) {
      _medicinesInCart[medicine] += 1;
    } else {
      _medicinesInCart[medicine] = 1;
    }
    Get.snackbar("Medicine Added", "Medicine Added",
        snackPosition: SnackPosition.BOTTOM,
        duration: const Duration(seconds: 1));
  }

  get medicinesInCart => _medicinesInCart;
}