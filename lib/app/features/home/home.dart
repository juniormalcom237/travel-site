import 'package:flutter/material.dart';
import 'package:travel_landing/app/core/tools/responsive_breakpoint.dart';
import 'package:travel_landing/app/core/tools/theme.dart';
import 'package:travel_landing/app/features/home/widgets/StepSections.dart';
import 'package:travel_landing/app/features/home/widgets/category-section.dart';
import 'package:travel_landing/app/features/home/widgets/topSellingSection.dart';

class HomeScreenn extends StatelessWidget {
  const HomeScreenn({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: size.height,
            constraints: BoxConstraints(
              maxWidth: size.width > 1440 ? 1440 : size.width * 1,
            ),

            child: Responsive(
              mobile: _HomeScreenMobile(),
              web: _HomeScreenWeb(),
              tablet: _HomeScreenTablette(),
            ),
          ),
        ],
      ),
    );
  }
}

class _HomeScreenMobile extends StatelessWidget {
  const _HomeScreenMobile();

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class _HomeScreenTablette extends StatelessWidget {
  const _HomeScreenTablette();

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class _HomeScreenWeb extends StatelessWidget {
  const _HomeScreenWeb();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          child: Container(
            // s
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/fullcover.png"),
              ),
            ),
            child: Column(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: constraints.maxHeight * 0.06,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset("assets/images/Logo.png"),
                          SizedBox(
                            width: constraints.maxWidth * 0.75,
                            // color: Colors.red,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Destination",
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: StaticColors.darkPrimaryText,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Hotel",
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: StaticColors.darkPrimaryText,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Flight",
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: StaticColors.darkPrimaryText,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Bookings",
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: StaticColors.darkPrimaryText,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Login",
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: StaticColors.darkPrimaryText,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                OutlinedButton(
                                  onPressed: () {},
                                  style: OutlinedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        color: StaticColors.darkPrimaryText,
                                      ),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                  child: Text(
                                    "Sign Up",
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: StaticColors.darkPrimaryText,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                TextButton.icon(
                                  onPressed: () {},
                                  label: Text(
                                    "EN",
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: StaticColors.darkPrimaryText,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_outlined,
                                  ),
                                  iconAlignment: IconAlignment.end,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: constraints.maxHeight * 0.8,
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 1,
                            child: LayoutBuilder(
                              builder: (context, size) {
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Best Destinations around the world"
                                          .toUpperCase(),
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        color: StaticColors.red,
                                      ),
                                    ),
                                    SizedBox(
                                      height: constraints.maxHeight * 0.03,
                                    ),
                                    SizedBox(
                                      width: constraints.maxWidth * 0.42,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            right: -70,
                                            top: constraints.maxHeight * 0.065,
                                            child: Image.asset(
                                              "assets/images/Decore.png",
                                            ),
                                          ),
                                          Text(
                                            "Travel, enjoy and live a new and full life",
                                            maxLines: 3,
                                            softWrap: true,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              height: 1.1,
                                              fontSize: 84,
                                              fontWeight: FontWeight.w700,
                                              color:
                                                  StaticColors.darkPrimaryText,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: constraints.maxHeight * 0.03,
                                    ),
                                    SizedBox(
                                      height: 100,
                                      width: size.maxWidth * 0.6,
                                      child: Text(
                                        "Built Wicket longer admire do barton vanity itself do in it. Preferred to sportsmen it engrossed listening. Park gate sell they west hard for the.",
                                        softWrap: true,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 4,
                                        style: TextStyle(
                                          height: 1.6,
                                          fontSize: 16,

                                          fontWeight: FontWeight.w400,
                                          color: StaticColors.darkSecondaryText,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: constraints.maxHeight * 0.02,
                                    ),
                                    Row(
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                StaticColors.yellowColor,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(20.0),
                                            child: Text(
                                              "Find out more",
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/images/travailleur.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 40),
                  ],
                ),
                CategorySection(),
                SizedBox(height: 100),
                TopDestinations(),
                SizedBox(height: 100),
                StepSections(),
              ],
            ),
          ),
        );
      },
    );
  }
}
