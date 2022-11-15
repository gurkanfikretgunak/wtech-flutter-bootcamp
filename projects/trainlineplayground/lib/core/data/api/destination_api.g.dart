// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destination_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Dest _$DestFromJson(Map<String, dynamic> json) => Dest(
      id: json['id'] as String?,
      stationName: json['stationName'] as String?,
    );

Map<String, dynamic> _$DestToJson(Dest instance) => <String, dynamic>{
      'id': instance.id,
      'stationName': instance.stationName,
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
    baseUrl ??= 'https://6370c24f0399d1995d8356d2.mockapi.io/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<List<Dest>> getDest() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result =
        await _dio.fetch<List<dynamic>>(_setStreamType<List<Dest>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/destinations',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => Dest.fromJson(i as Map<String, dynamic>))
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
