import 'package:freezed_annotation/freezed_annotation.dart';

part 'store.freezed.dart';
part 'store.g.dart';

@freezed
class Store with _$Store {
  factory Store(
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'title') String title,
    @JsonKey(name: 'description') String description,
    @JsonKey(name: 'price') double price,
    @JsonKey(name: 'discount') double discount,
    @JsonKey(name: 'rating') double rating,
    @JsonKey(name: 'stock') int stock,
    @JsonKey(name: 'brand') String brand,
  ) = _Store;

  factory Store.fromJson(Map<String, dynamic> json) => _$StoreFromJson(json);
}
