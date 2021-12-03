import 'package:dio/dio.dart';

import 'package:state_management/games/api/client/games_client.dart';
import 'package:state_management/games/api/dto/games_filter.dto.dart';
import 'package:state_management/games/domain/game.dart';
import 'package:state_management/games/domain/games.service.dart';
import 'package:state_management/games/domain/games_filter.dart';

class HttpGameRepository implements GamesRepository {
  final GamesClient _client = GamesClient(Dio());

  @override
  Future<List<Game>> fetchGamesByFilter(GamesFilter filter) async {
    final result = await _client.fetchByFilter(GamesFilterDTO.fromGamesFilter(filter).toJson());
    return result.map((dto) => dto.toGame()).toList();
  }
}