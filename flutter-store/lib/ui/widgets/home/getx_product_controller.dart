import 'package:brickdata/data/models/product.dart';
import 'package:brickdata/data/repositories/product_repository.dart';
import 'package:get/get.dart';

class GetxProductController extends GetxController with StateMixin {
  ProductRepository productRepository;
  GetxProductController({required this.productRepository});
  List<Product> productList = [];

  @override
  void onInit() async {
    change(null, status: RxStatus.loading());
    productList = await productRepository.getAllProduct();
    change(null, status: RxStatus.success());
    super.onInit();
  }
}
