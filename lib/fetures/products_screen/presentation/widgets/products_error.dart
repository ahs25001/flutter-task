import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_task/core/utils/app_colors.dart';
import 'package:flutter_task/core/utils/app_styles.dart';
import 'package:flutter_task/fetures/products_screen/data/models/ProductModel.dart';
import 'package:flutter_task/fetures/products_screen/data/models/ProductModel.dart';
import 'package:lottie/lottie.dart';

import '../../../../generated/assets.dart';
import '../bloc/products_bloc.dart';

class ProductsError extends StatelessWidget {
  const ProductsError({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Lottie.asset(Assets.jsonErrorAnimation),
        BlocBuilder<ProductsBloc, ProductsState>(
          builder: (context, state) {
            return ElevatedButton(
              onPressed: () {
                ProductsBloc.get(context).add(GetProductsEvent());
              },
              style: ElevatedButton.styleFrom(backgroundColor: primaryColor),
              child: Text(
                "Retry",
                style: productTitleStyle.copyWith(color: Colors.white),
              ),
            );
          },
        )
      ],
    );
  }
}
