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
      trackTotal = 0;
    } else {
      selectedGenre = id;
      trackTotal = count;
    }
    getMusicChartTrack(Paginate.reset);
    notifyListeners();
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
      // messageList = setErrorMessage(error);
      notifyListeners();
    }
  }

  // Music Track
  Loading loadingTrack = Loading.idle;
  MusicChartTrackModel dataTrack = MusicChartTrackModel();
  String messageTrack = '';
  Paginate paginateTypeTrack = Paginate.reset;
  Map<String, dynamic> paginateTrack = {
    'startFrom': 0,
    'pageSize': 10,
  };
  bool hasNextPageTrack = true;

  getMusicChartTrack(Paginate paginate) async {
    try {
      if (paginate == Paginate.next &&
          (loadingTrack == Loading.pending || !hasNextPageTrack)) return;
      loadingTrack = Loading.pending;
      paginateTypeTrack = paginate;
      notifyListeners();
      Map<String, dynamic> params = {};
      params = setPaginationParams(paginate, paginateTrack);
      if (selectedGenre != '') {
        params["listId"] = selectedGenre;
      }
      MusicChartTrackModel response =
          await _musicService.getMusicChartTrack(params);
      if (paginate == Paginate.next) {
        dataTrack.tracks = [...?dataTrack.tracks, ...?response.tracks];
      } else {
        dataTrack = response;
      }
      paginateTrack = setPaginationParams(paginate, paginateTrack);
      hasNextPageTrack = hasNextPage(paginate, paginateTrack['startFrom']);
      loadingTrack = Loading.succeeded;
      notifyListeners();
    } catch (error) {
      loadingTrack = Loading.failed;
      // messageTrack = setErrorMessage(error);
      hasNextPageTrack = false;
      notifyListeners();
    }
  }

  bool hasNextPage(Paginate paginate, int page) {
    bool result = true;
    if (paginate == Paginate.reset) return result;
    if (selectedGenre != '') {
      result = page < trackTotal;
    }
    return result;
  }
}
