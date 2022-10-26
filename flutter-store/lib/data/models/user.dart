import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  factory User(
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'firstName') String firstName,
    @JsonKey(name: 'lastName') String lastName,
    @JsonKey(name: 'age') int age,
    @JsonKey(name: 'gender') String gender,
  ) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
