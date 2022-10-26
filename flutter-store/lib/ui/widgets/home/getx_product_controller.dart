import 'package:brickdata/data/models/product.dart';
import 'package:brickdata/data/repositories/product_repository.dart';
// import 'package:brickdata/data/repositories/user_repository.dart';
import 'package:get/get.dart';

class GetxProductController extends GetxController with StateMixin {
  GetxProductController({required this.productRepository});
  ProductRepository productRepository;
  // UserRepository userRepository;

  List<Product> productList = [];
  List<Product> userList = [];

  @override
  void onInit() async {
    change(null, status: RxStatus.loading());
    productList = await productRepository.getAllProduct();
    // userList = await userRepository.getAllUser();
    change(null, status: RxStatus.success());
    super.onInit();
  }
}
