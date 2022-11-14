import 'package:music_apps/src/modules/auth/notifier/auth_notifier.dart';
import 'package:music_apps/src/modules/core/notifier/core_notifier.dart';
import 'package:music_apps/src/modules/music/notifier/music_notifier.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> providers = [
  ChangeNotifierProvider(create: (_) => CoreNotifier()),
  ChangeNotifierProvider(create: (_) => AuthNotifier()),
  ChangeNotifierProvider(create: (_) => MusicNotifier()),
];
