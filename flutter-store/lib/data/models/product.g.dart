// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Product _$$_ProductFromJson(Map<String, dynamic> json) => _$_Product(
      json['id'] as int,
      json['title'] as String,
      json['description'] as String,
      json['brand'] as String,
      (json['price'] as num?)?.toDouble(),
      (json['discountPercentage'] as num?)?.toDouble(),
      (json['rating'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'brand': instance.brand,
      'price': instance.price,
      'discountPercentage': instance.discountPercentage,
      'rating': instance.rating,
    };
