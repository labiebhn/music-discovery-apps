import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:music_apps/src/modules/music/notifier/music_notifier.dart';
import 'package:music_apps/src/utils/fonts.dart';
import 'package:music_apps/src/utils/palettes.dart';
import 'package:provider/provider.dart';

class MusicListScreen extends StatefulWidget {
  const MusicListScreen({Key? key}) : super(key: key);

  @override
  State<MusicListScreen> createState() => _MusicListScreenState();
}

class _MusicListScreenState extends State<MusicListScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final musicNotifier = context.read<MusicNotifier>();
      musicNotifier.getMusicChartList();
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Palettes.text,
      statusBarBrightness: Brightness.dark,
    ));
    final musicNotifier = Provider.of<MusicNotifier>(context);
    return Scaffold(
      body: Container(
        color: Palettes.background,
        child: const SafeArea(
          child: Center(
            child: Text(
              'Music Apps',
              style: Fonts.h4,
            ),
          ),
        ),
      ),
    );
  }
}
