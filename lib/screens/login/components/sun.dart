import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../size_config.dart';

class Sun extends StatelessWidget {
  final Duration duration;
  final bool isFullSun;

  const Sun({super.key, required this.duration, required this.isFullSun});

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: duration,
      curve: Curves.easeInOut,
      left: getProportionateScreenWidth(30),
      bottom: getProportionateScreenWidth(isFullSun ? -45 : -120),
      child: SvgPicture.asset("assets/icons/Sun.svg"),
    );
  }
}
