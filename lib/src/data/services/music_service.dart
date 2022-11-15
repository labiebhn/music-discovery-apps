import 'package:dio/dio.dart';
import 'package:music_apps/src/configs/interceptor.dart';
import 'package:music_apps/src/data/models/music/music_chart_list.dart';

class MusicService {
  final dio = Dio();

  MusicService() {
    dio.interceptors.add(AppInterceptors());
  }

  Future getMusicChartList() async {
    Response response = await dio.get('/charts/list');
    return MusicChartList.fromJson(response.data);
  }
}
