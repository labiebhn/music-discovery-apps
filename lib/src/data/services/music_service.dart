import 'package:dio/dio.dart';
import 'package:music_apps/src/configs/interceptor.dart';
import 'package:music_apps/src/data/models/music/music_chart_list_model.dart';
import 'package:music_apps/src/data/models/music/music_chart_track_model.dart';

class MusicService {
  final dio = Dio();

  MusicService() {
    dio.interceptors.add(AppInterceptors());
  }

  Future getMusicChartList() async {
    Response response = await dio.get('/charts/list');
    return MusicChartListModel.fromJson(response.data);
  }

  Future getMusicChartTrack(Map<String, dynamic>? params) async {
    Response response = await dio.get('/charts/track', queryParameters: params);
    return MusicChartTrackModel.fromJson(response.data);
  }
}
