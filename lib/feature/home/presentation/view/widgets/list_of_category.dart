import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_market/feature/home/presentation/view/widgets/category_item.dart';
class ListViewOfCategory extends StatelessWidget {
  const ListViewOfCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 135.h,
      child: ListView.builder(
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CategoryItem();
        },
      ),
    );
  }
}
