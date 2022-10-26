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
      // print(response);
    } catch (e) {
      print(e);
      return [];
    }
  }
}

// https://dummyjson.com/

// , queryParameters: {'param1': 'val1', 'param2': 'val2'}
/*
  Future<List<Post>> getAllPost() async {
  try{
    var response = await Dio().get('https://dummyjson.com/products/1');
    List<Post> postList = response.data.map((post) => Post.fromJson(post));
    return PostList;
  }
*/
