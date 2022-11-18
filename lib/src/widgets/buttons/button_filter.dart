import 'package:flutter/material.dart';
import 'package:music_apps/src/utils/fonts.dart';
import 'package:music_apps/src/utils/palettes.dart';

class ButtonFilter extends StatelessWidget {
  final bool? active;
  final String title;
  final Function()? onPressed;
  const ButtonFilter({
    Key? key,
    required this.title,
    this.onPressed,
    this.active = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          primary: active == true ? Palettes.primary : Palettes.card,
        ),
        child: Text(
          title,
          style: Fonts.h6,
        ),
      ),
    );
  }
}
