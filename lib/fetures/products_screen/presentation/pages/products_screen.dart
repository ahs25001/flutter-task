import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_task/fetures/products_screen/presentation/bloc/products_bloc.dart';
import 'package:flutter_task/fetures/products_screen/presentation/widgets/search_field.dart';
import 'package:flutter_task/generated/assets.dart';

class ProductsScreen extends StatelessWidget {
  static const String routeName = "productsScreen";

  const ProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductsBloc(),
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 8.0.h),
            child: BlocConsumer<ProductsBloc, ProductsState>(
              listener: (context, state) {
                // TODO: implement listener
              },
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
                        SizedBox(width: 26.w,),
                        SvgPicture.asset(Assets.imagesCartIcon,width: 32.w,height: 32.h,)
                      ],
                    ),
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
