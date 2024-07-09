import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_task/core/utils/app_strings.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../generated/assets.dart';

class SearchField extends StatelessWidget {
  TextEditingController controller;

  SearchField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              color: primaryColor,
              size: 46.sp,
            ),
            hintText: searchHint,
            hintStyle: searchHintStyle,
            contentPadding:
                EdgeInsets.symmetric(vertical: 13.h, horizontal: 24.w),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: primaryColor),
                borderRadius: BorderRadius.circular(30.r)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: primaryColor),
                borderRadius: BorderRadius.circular(30.r)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: primaryColor),
                borderRadius: BorderRadius.circular(30.r))),
      ),
    );
  }
}
