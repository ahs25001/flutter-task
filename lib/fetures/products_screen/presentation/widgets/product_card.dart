import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_task/core/utils/app_colors.dart';
import 'package:flutter_task/core/utils/app_strings.dart';
import 'package:flutter_task/fetures/products_screen/domain/entities/ProductEntity.dart';
import 'package:flutter_task/generated/assets.dart';

import '../../../../core/utils/app_styles.dart';

class ProductCard extends StatelessWidget {
  ProductsDataEntity? product;

  ProductCard(this.product);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 2,
      shadowColor: primaryColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.r),
          side: BorderSide(color: primaryColor)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              CachedNetworkImage(
                imageUrl: product?.images?[0] ?? "",
                width: 191.w,
                height: 128.h,
                progressIndicatorBuilder: (context, url, downloadProgress) =>
                    Center(
                        child: CircularProgressIndicator(
                            value: downloadProgress.progress)),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
              SvgPicture.asset(
                Assets.imagesAddToFavoretIcon,
                width: 60.w,
                height: 60.h,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 8.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product?.title ?? "",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: productTitleStyle,
                ),
                Text(
                  product?.description ?? "",
                  style: productTitleStyle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 8.h,
                ),
                Row(
                  children: [
                    Text(
                      "$eGP ${product?.price ?? 0}",
                      style: productTitleStyle,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Text(
                          "${((product?.price ?? 0) + ((product?.price ?? 0) * ((product?.discountPercentage ?? 0) / 100))).toInt()} $eGP",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: discountStyle,
                        ),
                        Container(
                          color: primaryColor,
                          width: 50.w,
                          height: 1.h,
                        )
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "$review (${product?.rating})",
                      style: productTitleStyle,
                    ),
                    Icon(
                      Icons.star,
                      size: 25.sp,
                      color: amberColor,
                    ),
                    const Spacer(),
                    CircleAvatar(
                      backgroundColor: primaryColor,
                      radius: 15.r,
                      child: Icon(
                        Icons.add,
                        size: 25.sp,
                        color: Colors.white,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
