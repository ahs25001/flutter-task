import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';

class SearchField extends StatelessWidget {
  TextEditingController controller;

  SearchField({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        decoration: InputDecoration(
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
