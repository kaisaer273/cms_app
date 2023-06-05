import 'package:get/get.dart';

import '../models/medicine_model.dart';

class CartController extends GetxController {
  final _medicinesInCart = {}.obs;
  var filteredMedicineList = [].obs; // Danh sách đã lọc

  @override
  void onInit() {
    super.onInit();
    filteredMedicineList.value = MedicineModel.medicines; // Bắt đầu bằng việc hiển thị toàn bộ danh sách
  }

  void filterMedicine(String query) {
    // Lọc danh sách dựa trên query
    filteredMedicineList.value = MedicineModel.medicines.where((item) {
      return item.activeIngredientName.toLowerCase().contains(query.toLowerCase())||item.genericName.toLowerCase().contains(query.toLowerCase());
    }).toList();
  }
  
  //Thêm thuốc vào giỏ hàng từ màn hình thuốc
  void addMedicine(MedicineModel medicine) {
    if(!_medicinesInCart.containsKey(medicine)) {
      _medicinesInCart[medicine] = 1;
    }else{
      removeMedicine(medicine);
    }
  }
  //Xóa thuốc khỏi giỏ hàng
  void removeMedicine(MedicineModel medicine) {
    _medicinesInCart.remove(medicine);
  }
  //Tăng số lượng thuốc trong giỏ hàng
  void increMedicine(MedicineModel medicine){
    _medicinesInCart[medicine] += 1;
  }
  //Giảm số lượng thuốc trong giỏ hàng
  void decreMedicine(MedicineModel medicine){
    if(_medicinesInCart[medicine]==1){
      removeMedicine(medicine);
    }else {
      _medicinesInCart[medicine] -= 1;
    }
  }
  

  get medicinesInCart => _medicinesInCart;
}
