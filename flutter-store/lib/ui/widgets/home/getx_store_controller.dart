import 'package:brickdata/data/repositories/store_repository.dart';
import 'package:get/get.dart';

class GetxStoreController extends GetxController {
  StoreRepository storeRepository;
  GetxStoreController({required this.storeRepository});

/*
  @override
  void onReady() async {
    change(null, status: RxStatus.loading());
    await StoreRepository.getAllProduct();
    change(null, status: RxStatus.success());
    super.onInit();
  }
  */
}
