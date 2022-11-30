// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destinations_client.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Destinations _$DestinationsFromJson(Map<String, dynamic> json) => Destinations(
      destinationStation: json['destinationStation'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$DestinationsToJson(Destinations instance) =>
    <String, dynamic>{
      'id': instance.id,
      'destinationStation': instance.destinationStation,
    };

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _DestinationClient implements DestinationClient {
  _DestinationClient(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'https://6370c24f0399d1995d8356d2.mockapi.io';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<List<Destinations>> getDestinations() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio
        .fetch<List<dynamic>>(_setStreamType<List<Destinations>>(Options(
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
        .map((dynamic i) => Destinations.fromJson(i as Map<String, dynamic>))
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
