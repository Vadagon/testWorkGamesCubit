// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'games_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _GamesClient implements GamesClient {
  _GamesClient(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://www.freetogame.com/api';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<List<GameDTO>> fetchByFilter(filter) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.addAll(filter);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<GameDTO>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/games',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => GameDTO.fromJson(i as Map<String, dynamic>))
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
