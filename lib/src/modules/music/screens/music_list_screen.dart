import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';
import 'package:music_apps/src/enums/paginate_enum.dart';
import 'package:music_apps/src/modules/music/containers/genre_music.dart';
import 'package:music_apps/src/modules/music/notifier/music_notifier.dart';
import 'package:music_apps/src/utils/palettes.dart';
import 'package:music_apps/src/widgets/layouts/load_wrapper.dart';
import 'package:music_apps/src/widgets/lists/list_track_music.dart';
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
      musicNotifier.getMusicChartTrack(Paginate.reset);
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
        padding: EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top),
        color: Palettes.background,
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const GenreMusic(),
              Expanded(
                child: LazyLoadScrollView(
                  onEndOfPage: () {},
                  child: LoadWrapper(
                    loading: musicNotifier.loadingTrack,
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            ...?musicNotifier.dataTrack.tracks?.map((item) {
                              return ListTrackMusic(
                                title: item.title,
                                subtitle: item.subtitle,
                                coverUrl: item.images?.coverart,
                              );
                            }),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
