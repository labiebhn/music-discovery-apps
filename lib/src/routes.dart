import 'package:flutter/material.dart';
import 'package:music_apps/src/modules/music/arguments/movie_detail_arguments.dart';
import 'package:music_apps/src/modules/music/screens/music_detail.dart';
import 'package:music_apps/src/modules/music/screens/music_list.dart';

Map<String, Widget Function(BuildContext)> routes = {
  '/': (context) => const MusicListScreen(),
  '/music-detail': (context) => MusicDetailScreen(
      arguments:
          ModalRoute.of(context)!.settings.arguments as MovieDetailArguments)
};
