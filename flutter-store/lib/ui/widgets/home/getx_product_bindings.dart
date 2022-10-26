import 'package:brickdata/data/repositories/product_repository.dart';
import 'package:brickdata/ui/widgets/home/getx_product_controller.dart';
import 'package:get/get.dart';

class GetxProductBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => GetxProductController(productRepository: ProductRepository()),
    );
    Get.lazyPut(
        () => GetxProductController(productRepository: ProductRepository()));
  }
}
