import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_task/fetures/products_screen/data/data_sources/products_ds.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/api/api_manager.dart';
import '../../../../core/api/end_points.dart';
import '../../../../core/errors/remot_errors/api_error.dart';
import '../models/ProductModel.dart';

@Injectable(as: ProductsDs)
class ProductsDsImpl extends ProductsDs {
  ApiManager apiManager;

  ProductsDsImpl(this.apiManager);

  @override
  Future<Either<ProductModel, ApiError>> getProducts() async {
    try {
      var response = await apiManager.getData(getProductsEndPoint);
      String data = response.body;
      var jsonData = jsonDecode(data);
      return Left(ProductModel.fromJson(jsonData));
    } catch (e) {
      return Right(ApiError(e.toString()));
    }
  }
}
