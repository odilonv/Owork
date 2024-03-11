import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/constants/nums.dart';

class CircleLogoWidget extends StatelessWidget {
  final String image;
  final Color? backgroundColor;
  final BoxShape? boxShape;
  final double? size, backgroundSize;
  final VoidCallback onPressed;

  const CircleLogoWidget(
      {Key? key,
      this.size,
      this.backgroundSize,
      this.backgroundColor,
      this.boxShape,
      required this.image,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: backgroundSize ?? 35,
      height: backgroundSize ?? 35,
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.white,
        shape: boxShape ?? BoxShape.circle,
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: SvgPicture.asset(
          image,
          width: size ?? 25,
          height: size ?? 25,
        ),
      ),
    );
  }
}
