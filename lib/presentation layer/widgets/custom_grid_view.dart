import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomGridView extends StatelessWidget {
  final int itemCount;
  final Widget Function(BuildContext, int) itemBuilder;

  const CustomGridView({
    Key? key,
    required this.itemCount,
    required this.itemBuilder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GridView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,

        /// It is very important that someone else can get me an error
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.only(bottom: 20.h),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200.w,
          childAspectRatio: 3.w / 6.h,
        ),

        itemCount: itemCount,
        itemBuilder: itemBuilder,
      ),
    );
  }
}
