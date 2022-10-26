import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

// https://dummyjson.com/
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    return GetMaterialApp(
      title: 'Flutter Demo',
      color: Colors.red,
      getPages: [
        GetPage(
            // name: "/home",
            // page: () => const GetxStoreView(),
            // binding: GetxStoreBindings(),
            )
      ],
      initialRoute: "home",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const (),
    );
  }
}
