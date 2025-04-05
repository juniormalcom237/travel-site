import 'package:flutter/material.dart';
import 'package:travel_landing/app/core/tools/theme.dart';
import 'package:travel_landing/app/features/home/widgets/categoryCardItem.dart';

import '../../../core/models/Category.dart';

class CategorySection extends StatelessWidget {
  CategorySection({super.key});

  final List<Category> categoryItem = [
    Category(
      title: "Calculated Weather ",
      subTitle: "Built Wicket longer admire do barton vanity itself do in it.",
      img: "assets/images/cat1.png",
    ),
    Category(
      title: "Best Flights",
      subTitle: "Engrossed listening. Park gate sell they west hard for the.",
      img: "assets/images/cat2.png",
    ),
    Category(
      title: "Local Events",
      subTitle:
          "Barton vanity itself do in it. Preferd to men it engrossed listening. ",
      img: "assets/images/cat3.png",
    ),
    Category(
      title: "Customization",
      subTitle:
          "We deliver outsourced aviation services for military customers",
      img: "assets/images/cat4.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (ctx, constraints) {
        return Container(
          // padding: ,
          width: constraints.maxWidth,
          // color: Colors.green,
          child: Column(
            children: [
              Column(
                children: [
                  Text(
                    "CATEGORY",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: StaticColors.darkSecondaryText,
                    ),
                  ),
                  Text(
                    "We Offer Best Services",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 50,
                      color: StaticColors.sectionHeadingColor,
                    ),
                  ),
                ],
              ),

              SizedBox(
                width: constraints.maxWidth,
                child: Wrap(
                  spacing: 40,
                  runSpacing: 20,
                  children: [
                    ...categoryItem.map((category) {
                      return SizedBox(
                        width: 267,
                        height: 314,
                        child: Categorycarditem(category: category),
                      );
                    }),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
