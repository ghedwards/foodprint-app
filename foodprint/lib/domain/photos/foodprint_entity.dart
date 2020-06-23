import 'package:dartz/dartz.dart';
import 'package:foodprint/domain/core/failures.dart';
import 'package:foodprint/domain/photos/foodprint_photo_entity.dart';
import 'package:foodprint/domain/restaurants/restaurant_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'foodprint_entity.freezed.dart';

@freezed
abstract class FoodprintEntity implements _$FoodprintEntity {
  const FoodprintEntity._();

  const factory FoodprintEntity({
    @required Map<RestaurantEntity, List<FoodprintPhotoEntity>> restaurantPhotos 
  }) = _FoodprintEntity;
}