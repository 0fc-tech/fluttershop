// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      name: json['title'] as String,
      description: json['description'] as String,
      priceInCents: doublePriceToInt((json['price'] as num).toDouble()),
      image: json['image'] as String,
      category: json['category'] as String,
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'title': instance.name,
      'description': instance.description,
      'price': instance.priceInCents,
      'image': instance.image,
      'category': instance.category,
    };
