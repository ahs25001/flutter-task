import 'package:dartz/dartz.dart';
import 'package:flutter_task/fetures/products_screen/domain/repositories/products_repo.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/remot_errors/api_error.dart';
import '../entities/ProductEntity.dart';

@injectable
class GetProductsUseCase {
  ProductsRepo productsRepo;

  GetProductsUseCase(this.productsRepo);

  Future<Either<ProductEntity, ApiError>> call() => productsRepo.getProducts();
}
