import 'package:flutter/material.dart';
import 'package:travel_landing/app/core/tools/responsive_breakpoint.dart';

class HomeScreenn extends StatelessWidget {
  const HomeScreenn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints(maxWidth: 1024),
        child: Responsive(
          mobile: _HomeScreenMobile(),
          web: _HomeScreenWeb(),
          tablet: _HomeScreenTablette(),
        ),
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
    return ListView(children: [Container()]);
  }
}
