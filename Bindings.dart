import 'package:get/get.dart';
import 'core/class/CRUD.dart';


class initialbinding extends Bindings {
  @override
  void dependencies() {
    Get.put(Crud());

  }
}