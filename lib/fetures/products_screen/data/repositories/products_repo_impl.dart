import 'package:dartz/dartz.dart';
import 'package:flutter_task/core/errors/remot_errors/api_error.dart';
import 'package:flutter_task/fetures/products_screen/data/data_sources/products_ds.dart';
import 'package:flutter_task/fetures/products_screen/domain/entities/ProductEntity.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/products_repo.dart';
@Injectable(as: ProductsRepo)
class ProductsRepoImpl extends ProductsRepo{
  ProductsDs productsDs;

  ProductsRepoImpl(this.productsDs);

  @override
  Future<Either<ProductEntity, ApiError>> getProducts()=> productsDs.getProducts();

}