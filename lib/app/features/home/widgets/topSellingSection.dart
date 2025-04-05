import 'package:flutter/material.dart';
import 'package:travel_landing/app/features/home/widgets/destinationItem.dart';

import '../../../core/models/destination.dart';
import '../../../core/tools/theme.dart';

class TopDestinations extends StatelessWidget {
  TopDestinations({super.key});

  final List<Destination> destinations = [
    Destination(
      imageUrl: 'assets/images/img1.png',
      location: 'Rome, Italy',
      price: '\$1,474',
      duration: '6 Days Trip',
    ),
    Destination(
      imageUrl: 'assets/images/img2.jpeg',
      location: 'London, UK',
      price: '\$4.2k',
      duration: '12 Days Trip',
    ),
    Destination(
      imageUrl: 'assets/images/img3.png',
      location: 'Full Europe',
      price: '\$15k',
      duration: '28 Days Trip',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (ctx, constraints) {
        return Container(
          width: constraints.maxWidth,
          child: Column(
            children: [
              Column(
                children: [
                  Text(
                    "Top Selling",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: StaticColors.darkSecondaryText,
                    ),
                  ),
                  Text(
                    "Top Destinations",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 50,
                      color: StaticColors.sectionHeadingColor,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              SizedBox(
                width: constraints.maxWidth,
                child: Wrap(
                  spacing: 100,
                  runSpacing: 20,
                  children: [
                    ...destinations.map((destination) {
                      return SizedBox(
                        width: 315,
                        height: 457,
                        child: DestinationCard(destination: destination),
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
