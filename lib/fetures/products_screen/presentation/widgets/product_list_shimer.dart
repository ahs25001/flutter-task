import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../core/utils/app_colors.dart';

class ProductListShimmer extends StatelessWidget {
  const ProductListShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shadowColor: primaryColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.r),
         ),
      color: Colors.white,
      child: Column(
        children: [
          Shimmer.fromColors(
            baseColor: Colors.grey.shade300,
            highlightColor: Colors.grey.shade100,
            child: Container(
              color: Colors.white,
              width: 191.w,
              height: 128.h,
            ),
          ),
          SizedBox(height: 10.h,),
          Shimmer.fromColors(
            baseColor: Colors.grey.shade300,
            highlightColor: Colors.grey.shade100,
            child: Container(
              color: Colors.white,
              width: 191.w,
              height: 12.h,
            ),
          ),
          SizedBox(height: 10.h,),
          Shimmer.fromColors(
            baseColor: Colors.grey.shade300,
            highlightColor: Colors.grey.shade100,
            child: Container(
              color: Colors.white,
              width: 191.w,
              height: 12.h,
            ),
          ),
          SizedBox(height: 10.h,),
          Shimmer.fromColors(
            baseColor: Colors.grey.shade300,
            highlightColor: Colors.grey.shade100,
            child: Container(
              color: Colors.white,
              width: 191.w,
              height: 12.h,
            ),
          ),
          SizedBox(height: 10.h,),
          Shimmer.fromColors(
            baseColor: Colors.grey.shade300,
            highlightColor: Colors.grey.shade100,
            child: Container(
              color: Colors.white,
              width: 191.w,
              height: 12.h,
            ),
          ),
        ],
      ),
    );
  }
}
