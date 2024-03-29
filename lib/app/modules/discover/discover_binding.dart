import 'package:get/get.dart';
import 'package:oua_bootcamp/app/modules/discover/discover_controller.dart';

class DiscoverBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DiscoverController>(
      () => DiscoverController(),
    );
  }
}
