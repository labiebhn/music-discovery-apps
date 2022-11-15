import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:music_apps/src/modules/music/arguments/movie_detail_arguments.dart';

class MusicDetailScreen extends StatelessWidget {
  final MovieDetailArguments arguments;
  const MusicDetailScreen({Key? key, required this.arguments})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('Body'),
    );
  }
}
