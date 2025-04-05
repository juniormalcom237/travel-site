import 'package:flutter/material.dart';
import 'package:travel_landing/app/core/tools/theme.dart';
import 'package:travel_landing/app/features/home/widgets/stepItem.dart';

import '../../../core/models/bookingSteps.dart';
import '../../../core/tools/custom_icons_icons.dart';

class StepSections extends StatelessWidget {
  StepSections({super.key});

  List<BookingSteps> bookingStep = [
    BookingSteps(
      title: "Choose Destination",
      content:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Urna, tortor tempus. ",
      boxColor: Color(0xffF0BB1F),
      icon: CustomIcons.selection,
    ),
    BookingSteps(
      title: "Make Payment",
      content:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Urna, tortor tempus. ",
      boxColor: Color(0xffF15A2B),
      icon: CustomIcons.water_sport,
    ),
    BookingSteps(
      title: "Reach Airport on Selected Date",
      content:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Urna, tortor tempus. ",
      boxColor: Color(0xff006380),
      icon: CustomIcons.taxi,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          // color: Colors.red,
          width: constraints.maxWidth,
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Easy and Fast",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: StaticColors.darkSecondaryText,
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: constraints.maxWidth * 0.7,
                      child: Text(
                        "Book Your Next Trip In 3 Easy Steps",
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w700,
                          color: StaticColors.sectionHeadingColor,
                        ),
                      ),
                    ),
                    ...bookingStep.map((step) {
                      return StepItem(step: step);
                    }),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  child: Image.asset("assets/images/stepsImage.png"),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
