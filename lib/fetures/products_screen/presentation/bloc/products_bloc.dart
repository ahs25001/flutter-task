import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'products_event.dart';

part 'products_state.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  static ProductsBloc get(context) => BlocProvider.of(context);
  TextEditingController searchController = TextEditingController();

  ProductsBloc() : super(ProductsInitial()) {
    on<ProductsEvent>((event, emit) {

    });
  }
}
