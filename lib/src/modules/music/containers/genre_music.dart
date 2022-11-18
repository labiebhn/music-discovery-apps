import 'package:flutter/material.dart';
import 'package:music_apps/src/modules/music/notifier/music_notifier.dart';
import 'package:music_apps/src/widgets/buttons/button_filter.dart';
import 'package:music_apps/src/widgets/layouts/load_wrapper.dart';
import 'package:provider/provider.dart';

class GenreMusic extends StatelessWidget {
  const GenreMusic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final musicNotifier = Provider.of<MusicNotifier>(context);
    return SizedBox(
      width: double.infinity,
      child: LoadWrapper(
        loading: musicNotifier.loadingList,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 8.0),
                  child: ButtonFilter(
                    title: 'All',
                    active: musicNotifier.selectedGenre == '',
                    onPressed: () {
                      musicNotifier.handleSelectedGenre('', 0);
                    },
                  ),
                ),
                ...?musicNotifier.dataList.global?.genres?.map((item) {
                  return Container(
                    margin: const EdgeInsets.only(right: 8.0),
                    child: ButtonFilter(
                      title: '${item.name}',
                      active: item.listid == musicNotifier.selectedGenre,
                      onPressed: () {
                        musicNotifier.handleSelectedGenre(
                          '${item.listid}',
                          item.count ?? 0,
                        );
                      },
                    ),
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
