import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_task/config.dart';
import 'package:flutter_task/core/utils/app_colors.dart';
import 'package:flutter_task/fetures/products_screen/domain/use_cases/get_products_use_case.dart';
import 'package:flutter_task/fetures/products_screen/presentation/bloc/products_bloc.dart';
import 'package:flutter_task/fetures/products_screen/presentation/widgets/search_field.dart';
import 'package:flutter_task/generated/assets.dart';

import '../widgets/product_card.dart';

class ProductsScreen extends StatelessWidget {
  static const String routeName = "productsScreen";

  const ProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ProductsBloc(getIt<GetProductsUseCase>())..add(GetProductsEvent()),
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 8.0.h),
            child: BlocBuilder<ProductsBloc, ProductsState>(
              builder: (context, state) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      Assets.imagesLogo,
                      width: 66.w,
                      height: 22.h,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        SearchField(
                            controller:
                                ProductsBloc.get(context).searchController),
                        SizedBox(
                          width: 26.w,
                        ),
                        SvgPicture.asset(
                          Assets.imagesCartIcon,
                          width: 32.w,
                          height: 32.h,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    (state.productsScreenState ==
                            ProductsScreenState.getProductsLoading)
                        ? Center(
                            child: CircularProgressIndicator(
                            color: primaryColor,
                          ))
                        : ((state.productsScreenState ==
                                ProductsScreenState.getProductsError)
                            ? Text(state.apiError?.massage ?? "")
                            : Expanded(
                                child: GridView.builder(
                                    itemCount:
                                        state.productEntity?.products?.length ??
                                            0,
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                          childAspectRatio: 191.w/257.h,
                                            mainAxisSpacing: 16.h,
                                            crossAxisSpacing: 16.w,
                                            crossAxisCount: 2),
                                    itemBuilder: (context, index) =>
                                        ProductCard(state
                                            .productEntity?.products?[index])),
                              ))
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
