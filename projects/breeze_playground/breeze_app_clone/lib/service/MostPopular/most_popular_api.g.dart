// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'most_popular_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MostPopular _$MostPopularFromJson(Map<String, dynamic> json) => MostPopular(
      picture: json['picture'] as String,
      title: json['title'] as String,
      text: json['text'] as String,
      time: json['time'] as String,
      count: json['count'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$MostPopularToJson(MostPopular instance) =>
    <String, dynamic>{
      'picture': instance.picture,
      'title': instance.title,
      'text': instance.text,
      'time': instance.time,
      'count': instance.count,
      'id': instance.id,
    };

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _RestClient implements RestClient {
  _RestClient(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'https://63862e09875ca3273d52906b.mockapi.io/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<List<MostPopular>> getMostPopular() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio
        .fetch<List<dynamic>>(_setStreamType<List<MostPopular>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/MostPopular',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => MostPopular.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
