import 'package:equatable/equatable.dart';

class ProductEntity extends Equatable {
  ProductEntity({
    this.products,
  });

  List<ProductsDataEntity>? products;

  @override
  List<Object?> get props => [products];
}

class ProductsDataEntity extends Equatable {
  ProductsDataEntity({
    this.id,
    this.title,
    this.description,
    this.category,
    this.price,
    this.discountPercentage,
    this.rating,
    this.images,
  });

  num? id;
  String? title;
  String? description;
  String? category;
  num? price;
  num? discountPercentage;
  num? rating;
  List<String>? images;

  @override
  List<Object?> get props => [id];
}
