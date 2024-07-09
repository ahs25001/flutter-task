import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_task/core/errors/remot_errors/api_error.dart';
import 'package:flutter_task/fetures/products_screen/domain/use_cases/get_products_use_case.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/ProductEntity.dart';

part 'products_event.dart';

part 'products_state.dart';

@injectable
class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  static ProductsBloc get(context) => BlocProvider.of(context);
  GetProductsUseCase getProductsUseCase;

  TextEditingController searchController = TextEditingController();

  ProductsBloc(this.getProductsUseCase) : super(ProductsInitial()) {
    on<ProductsEvent>((event, emit) async {
      if (event is GetProductsEvent) {
        emit(state.copyWith(
            productsScreenState: ProductsScreenState.getProductsLoading));
        var response = await getProductsUseCase();
        response.fold(
          (l) {
            emit(state.copyWith(
                productEntity: l,
                productsScreenState: ProductsScreenState.getProductsSuccess));
          },
          (r) {
            emit(state.copyWith(
                apiError: r,
                productsScreenState: ProductsScreenState.getProductsError));
          },
        );
      }
    });
  }
}
