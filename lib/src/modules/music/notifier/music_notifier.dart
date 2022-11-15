import 'package:flutter/foundation.dart';
import 'package:music_apps/src/data/models/music/music_chart_list.dart';
import 'package:music_apps/src/data/services/music_service.dart';
import 'package:music_apps/src/enums/loading_enum.dart';
import 'package:music_apps/src/utils/helpers.dart';

class MusicNotifier extends ChangeNotifier with Helpers {
  final MusicService _musicService = MusicService();

  // Music List
  Loading loadingList = Loading.idle;
  MusicChartList dataList = MusicChartList();
  String messageList = '';

  getMusicChartList() async {
    try {
      loadingList = Loading.pending;
      notifyListeners();
      dataList = await _musicService.getMusicChartList();
      loadingList = Loading.succeeded;
      notifyListeners();
    } catch (error) {
      loadingList = Loading.failed;
      messageList = setErrorMessage(error);
      notifyListeners();
    }
  }
}
