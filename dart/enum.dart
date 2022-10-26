enum ApiResponseStatus {
  successful,
  unauthorized,
  uninitialized,
}

extension ApiResponseStatusStringDefinitonExtension on ApiResponseStatus {
  String get stringDefinition {
    switch (this) {
      case ApiResponseStatus.successful:
        return "Istek başarılı";
      case ApiResponseStatus.unauthorized:
        return "Yetkiniz yok";
      case ApiResponseStatus.uninitialized:
        return "Istek gerçekleşmedi";
      default:
        return "default case";
    }
  }
}
