import 'package:dartz/dartz.dart';
import 'package:flutter_task/core/errors/remot_errors/api_error.dart';
import 'package:flutter_task/fetures/products_screen/data/models/ProductModel.dart';
import 'package:injectable/injectable.dart';
@injectable
abstract class ProductsDs {
  Future<Either<ProductModel, ApiError>> getProducts();
}
