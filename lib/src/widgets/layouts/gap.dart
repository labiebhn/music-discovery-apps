import 'package:flutter/material.dart';
import 'package:music_apps/src/utils/palettes.dart';
import 'package:shimmer/shimmer.dart';

class Gap extends StatelessWidget {
  final double width;
  final double height;
  final bool shimmer;

  const Gap(
      {Key? key, this.width = 0.0, this.height = 0.0, this.shimmer = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (shimmer) {
      return SizedBox(
        width: width,
        height: height,
        child: Shimmer.fromColors(
          baseColor: Palettes.card,
          highlightColor: Palettes.border,
          child: Container(
            width: width,
            height: height,
            color: Palettes.background,
          ),
        ),
      );
    } else {
      return SizedBox(
        width: width,
        height: height,
      );
    }
  }
}
