class Helpers {
  String setErrorMessage(dynamic error) {
    String message = error?.response?.data?.data?.message ??
        error?.response?.data?.meta?.message ??
        error?.response?.data?.message ??
        error?.response?.message ??
        error?.message ??
        error ??
        'Server Sedang Mengalami Gangguan';

    if (error?.response?.status == 500 ||
        error?.response?.data?.meta?.status == 500) {
      message = 'Server Sedang Mengalami Gangguan';
    }

    return message;
  }
}
