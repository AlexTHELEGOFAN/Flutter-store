import 'package:brickdata/ui/widgets/home/getx_product_bindings.dart';
import 'package:brickdata/ui/widgets/home/getx_product_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Store',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      color: Colors.red,
      initialBinding: GetxProductBindings(),
      getPages: [
        GetPage(
          name: "/home",
          page: () => const GetxProductView(),
          binding: GetxProductBindings(),
        )
      ],
      initialRoute: "/home",
    );
  }
}
