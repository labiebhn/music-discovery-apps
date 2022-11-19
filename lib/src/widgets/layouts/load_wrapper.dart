import 'package:flutter/cupertino.dart';
import 'package:music_apps/src/enums/loading_enum.dart';
import 'package:music_apps/src/enums/paginate_enum.dart';
import 'package:music_apps/src/utils/palettes.dart';

class LoadWrapper extends StatelessWidget {
  final Loading loading;
  final Widget child;
  final Paginate? paginate;
  const LoadWrapper({
    Key? key,
    required this.loading,
    required this.child,
    this.paginate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (loading == Loading.pending) {
      if (paginate == Paginate.next || paginate == Paginate.disabled) {
        return child;
      } else {
        return Center(
          child: CupertinoActivityIndicator(
            color: Palettes.primary,
          ),
        );
      }
    }
    return child;
  }
}
