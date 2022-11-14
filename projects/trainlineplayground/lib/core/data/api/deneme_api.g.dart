// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deneme_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Dest _$DestFromJson(Map<String, dynamic> json) => Dest(
      station: json['station'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$DestToJson(Dest instance) => <String, dynamic>{
      'station': instance.station,
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
    baseUrl ??= 'https://6370c24f0399d1995d8356d2.mockapi.io/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<Dest> getDest() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result =
        await _dio.fetch<Map<String, dynamic>>(_setStreamType<Dest>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/destinations/{stationName}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Dest.fromJson(_result.data!);
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
