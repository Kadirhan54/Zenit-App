import 'package:get/get.dart';
import 'package:oua_bootcamp/app/modules/add/add_controller.dart';

class AddBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddController>(
      () => AddController(),
    );
  }
}
