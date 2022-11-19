import 'package:music_apps/src/enums/paginate_enum.dart';

class Helpers {
  String setErrorMessage(dynamic error) {
    String message = error?.response?.data?.message ??
        error?.response?.message ??
        error?.message ??
        error ??
        'Server Sedang Mengalami Gangguan';
    return message;
  }

  Map<String, dynamic> setPaginationParams(
    Paginate paginate,
    Map<String, dynamic> pagination,
  ) {
    int startFrom = pagination['startFrom'] ?? 0;
    int pageSize = pagination['pageSize'] ?? 10;
    switch (paginate) {
      case Paginate.next:
        startFrom += pageSize;
        break;
      case Paginate.disabled:
        startFrom = 0;
        pageSize *= startFrom;
        break;
      case Paginate.reset:
        startFrom = 0;
        pageSize = 10;
        break;
      default:
        break;
    }
    pagination['startFrom'] = startFrom;
    pagination['pageSize'] = pageSize;
    return pagination;
  }
}
