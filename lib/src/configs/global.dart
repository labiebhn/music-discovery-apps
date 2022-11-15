import 'package:flutter_dotenv/flutter_dotenv.dart';

class CONFIGS {
  static String baseUrl = dotenv.env['API_BASE_URL'] as String;
  static String apiKey = dotenv.env['API_KEY'] as String;
  static String apiHost = dotenv.env['API_HOST'] as String;
  static int timeout = 10000;
}
