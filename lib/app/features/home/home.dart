import 'package:flutter/material.dart';
import 'package:travel_landing/app/core/tools/responsive_breakpoint.dart';
import 'package:travel_landing/app/core/tools/theme.dart';

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
  const _HomeScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class _HomeScreenTablette extends StatelessWidget {
  const _HomeScreenTablette({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class _HomeScreenWeb extends StatelessWidget {
  const _HomeScreenWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return ListView(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/images/Logo.png"),
                  Container(
                    width: constraints.maxWidth * 0.75,
                    color: Colors.red,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text("Destination"),
                        ),
                        TextButton(onPressed: () {}, child: Text("Hotel")),
                        TextButton(onPressed: () {}, child: Text("Flight")),
                        TextButton(onPressed: () {}, child: Text("Bookings")),
                        TextButton(onPressed: () {}, child: Text("Login")),
                        OutlinedButton(
                          onPressed: () {},
                          child: Text("Sign Up"),
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: StaticColors.darkPrimaryText,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                        TextButton.icon(
                          onPressed: () {},
                          label: Text("EN"),
                          icon: Icon(Icons.keyboard_arrow_down_outlined),
                          iconAlignment: IconAlignment.end,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
