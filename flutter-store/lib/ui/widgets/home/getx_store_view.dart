import 'package:brickdata/ui/widgets/home/getx_store_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxStoreView extends GetView<GetxStoreController> {
  const GetxStoreView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<GetxStoreController>(
      // body: controller.obx(
      builder: (controller) => Scaffold(
        appBar: AppBar(
          title: const Text('Accueil'),
        ),
        body: const Center(
          child: Text('Bienvenue au Flutter Store !'),
        ),
      ),
    );
  }
}

  /*
  @override
  void onReady() async {
    change(null, status: RxStatus.loading());
    await StoreRepository.getAllPost();
    change(null, status: RxStatus.success());
    super.onInit();
  }
  */

