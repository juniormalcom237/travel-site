import 'package:flutter/material.dart';
import 'package:travel_landing/app/core/models/bookingSteps.dart';
import 'package:travel_landing/app/core/tools/theme.dart';

class StepItem extends StatelessWidget {
  const StepItem({super.key, required this.step});

  final BookingSteps step;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, size) {
        return Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Container(
            // padding: EdgeInsets.all(10),
            // width: size.maxWidth * 0.7,
            child: ListTile(
              contentPadding: EdgeInsets.zero,

              leading: Container(
                width: 40,
                height: 41,
                decoration: BoxDecoration(
                  color: step.boxColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(step.icon, size: 14, color: Colors.white),
              ),
              title: Text(
                step.title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: StaticColors.darkSecondaryText,
                ),
              ),
              subtitle: Container(
                // color: Colors.red,
                width: size.maxWidth * 0.1,
                child: Text(
                  step.content,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: StaticColors.darkSecondaryText,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
