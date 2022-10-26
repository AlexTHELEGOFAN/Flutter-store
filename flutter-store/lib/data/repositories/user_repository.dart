import 'package:brickdata/data/models/user.dart';
import 'package:dio/dio.dart';

class UserRepository {
  UserRepository();

  Future<List<User>> getAllUser() async {
    try {
      var response = await Dio().get(
        'https://dummyjson.com/users/',
      );
      List<User> userList = response.data['users']
          .map<User>((user) => User.fromJson(user))
          .toList();
      return userList;
    } catch (e) {
      print(e);
      return [];
    }
  }
}
