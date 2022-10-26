// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Store _$$_StoreFromJson(Map<String, dynamic> json) => _$_Store(
      json['id'] as int,
      json['title'] as String,
      json['description'] as String,
      (json['price'] as num).toDouble(),
      (json['discount'] as num).toDouble(),
      (json['rating'] as num).toDouble(),
      json['stock'] as int,
      json['brand'] as String,
    );

Map<String, dynamic> _$$_StoreToJson(_$_Store instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'discount': instance.discount,
      'rating': instance.rating,
      'stock': instance.stock,
      'brand': instance.brand,
    };
