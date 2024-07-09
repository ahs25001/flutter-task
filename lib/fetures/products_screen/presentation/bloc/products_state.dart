part of 'products_bloc.dart';

enum ProductsScreenState {
  init,
  getProductsLoading,
  getProductsSuccess,
  getProductsError
}

@immutable
class ProductsState {
  ApiError? apiError;
  ProductsScreenState? productsScreenState;
  ProductEntity? productEntity;

  ProductsState({this.productsScreenState, this.productEntity, this.apiError});

  ProductsState copyWith(
      {ApiError? apiError,
      ProductsScreenState? productsScreenState,
      ProductEntity? productEntity}) {
    return ProductsState(
        apiError: apiError ?? this.apiError,
        productEntity: productEntity ?? this.productEntity,
        productsScreenState: productsScreenState ?? this.productsScreenState);
  }
}

final class ProductsInitial extends ProductsState {}
