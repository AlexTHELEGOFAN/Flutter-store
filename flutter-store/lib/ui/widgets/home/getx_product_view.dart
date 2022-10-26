import 'package:brickdata/ui/widgets/home/getx_product_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxProductView extends GetView<GetxProductController> {
  const GetxProductView({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Accueil';

    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: controller.obx(
        (state) => Center(
          child: Column(
            children: [
              const Text(
                "Bienvenue au Flutter Store !",
                style: TextStyle(fontSize: 35),
              ),
              const Text(
                "Liste de produits :",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Expanded(
                child: Scrollbar(
                  thumbVisibility: true,
                  child: SingleChildScrollView(
                    child: Column(
                      children: List.generate(
                        controller.productList.length,
                        (index) {
                          return Row(
                            children: [
                              Container(
                                width: 500,
                                height: 140,
                                child: Card(
                                  color: Colors.blue[200]?.withOpacity(0.8),
                                  shadowColor: Colors.black,
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      children: [
                                        Flexible(
                                          flex: 2,
                                          child: Text(
                                            "${controller.productList[index].title}\n ",
                                            style: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Spacer(),
                                        Flexible(
                                          flex: 3,
                                          child: Text(
                                            "${controller.productList[index].description}\n ",
                                            style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                        Spacer(),
                                        Flexible(
                                          flex: 3,
                                          child: Text(
                                            "Prix : ${controller.productList[index].price} € \n "
                                            "Remise : ${controller.productList[index].discountPercentage} %\n ",
                                            style: const TextStyle(
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
} 

        
      /*
      body: Center(
          child: Row(
            children: [
              Container(
                width: 400,
                height: 100,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 0,
                  color: Theme.of(context).colorScheme.surfaceVariant,
                  shadowColor: Colors.black,
                  child: Row(
                    children: const [
                      Flexible(
                        child: ListTile(
                          title: Text(
                            'DUJARDIN Jean',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          textColor: Color.fromARGB(255, 3, 46, 81),
                          subtitle: Text('Cinéma - comédien'),
                        ),
                      ),
                      Flexible(
                        child: SizedBox(
                          width: 300,
                          height: 100,
                          child: Center(
                            child: Chip(
                                label: Text('Soumis'),
                                labelStyle: TextStyle(color: Colors.orange),
                                backgroundColor:
                                    Color.fromARGB(153, 239, 255, 117)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
       */


