import 'package:brickdata/ui/widgets/home/getx_store_bindings.dart';
import 'package:brickdata/ui/widgets/home/getx_store_view.dart';
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
      initialBinding: GetxStoreBindings(),
      getPages: [
        GetPage(
          name: "/home",
          page: () => const GetxStoreView(),
          binding: GetxStoreBindings(),
        )
      ],
      initialRoute: "home",
    );
  }
}
