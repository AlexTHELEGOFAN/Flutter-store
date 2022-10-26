import 'package:brickdata/data/models/product.dart';
import 'package:dio/dio.dart';

class ProductRepository {
  ProductRepository();

  Future<List<Product>> getAllProduct() async {
    try {
      var response = await Dio().get(
        'https://dummyjson.com/products/',
      );
      List<Product> productList = response.data['products']
          .map<Product>((product) => Product.fromJson(product))
          .toList();
      return productList;
    } catch (e) {
      print(e);
      return [];
    }
  }
}
