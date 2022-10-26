import 'package:brickdata/ui/widgets/home/getx_store_controller.dart';
import 'package:get/get.dart';

class GetxStoreBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GetxStoreController());
  }
}
