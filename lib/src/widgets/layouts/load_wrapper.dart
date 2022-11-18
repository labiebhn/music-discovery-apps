import 'package:flutter/cupertino.dart';
import 'package:music_apps/src/enums/loading_enum.dart';
import 'package:music_apps/src/utils/palettes.dart';

class LoadWrapper extends StatelessWidget {
  final Loading loading;
  final Widget child;
  const LoadWrapper({
    Key? key,
    required this.loading,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (loading == Loading.pending) {
      return Center(
        child: CupertinoActivityIndicator(
          color: Palettes.primary,
        ),
      );
    }
    return child;
  }
}
