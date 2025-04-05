import 'package:flutter/material.dart';
import 'package:travel_landing/app/core/tools/theme.dart';

import '../../../core/models/Category.dart';

class Categorycarditem extends StatelessWidget {
  const Categorycarditem({super.key, required this.category});

  final Category category;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, size) {
        return Container(
          // color: Colors.yellow,
          // padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(category.img, fit: BoxFit.fill, height: 78),
              SizedBox(height: 10),
              Text(
                category.title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: StaticColors.catTextColor,
                ),
              ),
              SizedBox(height: 14),

              SizedBox(
                width: size.maxWidth * 0.7,
                child: Text(
                  category.subTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: StaticColors.catTextSecColor,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
