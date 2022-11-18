import 'package:flutter/foundation.dart';
import 'package:music_apps/src/data/models/music/music_chart_list_model.dart';
import 'package:music_apps/src/data/models/music/music_chart_track_model.dart';
import 'package:music_apps/src/data/services/music_service.dart';
import 'package:music_apps/src/enums/loading_enum.dart';
import 'package:music_apps/src/enums/paginate_enum.dart';
import 'package:music_apps/src/utils/helpers.dart';

class MusicNotifier extends ChangeNotifier with Helpers {
  final MusicService _musicService = MusicService();

  // Music Genre
  String selectedGenre = '';
  int trackTotal = 0;

  handleSelectedGenre(String id, int count) {
    if (id == selectedGenre) {
      selectedGenre = '';
    } else {
      selectedGenre = id;
    }
    notifyListeners();
    getMusicChartTrack(Paginate.reset);
  }

  // Music List
  Loading loadingList = Loading.idle;
  MusicChartListModel dataList = MusicChartListModel();
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

  // Music Track
  Loading loadingTrack = Loading.idle;
  MusicChartTrackModel dataTrack = MusicChartTrackModel();
  String messageTrack = '';

  getMusicChartTrack(Paginate paginate) async {
    try {
      loadingTrack = Loading.pending;
      notifyListeners();
      Map<String, dynamic> params = {};
      if (selectedGenre != '') {
        params["listId"] = selectedGenre;
      }
      dataTrack = await _musicService.getMusicChartTrack(params);
      loadingTrack = Loading.succeeded;
      notifyListeners();
    } catch (error) {
      loadingTrack = Loading.failed;
      messageTrack = setErrorMessage(error);
      notifyListeners();
    }
  }
}
