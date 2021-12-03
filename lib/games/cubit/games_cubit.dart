import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management/games/api/client/games_client.dart';
import 'package:state_management/games/api/dto/game.dto.dart';
import 'package:state_management/games/api/http_games.repository.dart';
import 'package:state_management/games/domain/game.dart';
import 'package:state_management/games/domain/games_filter.dart';

class GamesCubit extends Cubit<List<Game>> {
  GamesCubit() : super([]);

  GameCategory? _category;
  SortBy? _sortBy;
  Future<void> fetchGames() async {
    try {
      emit([]);
      final List<Game> _loadedGamesList = await HttpGameRepository()
          .fetchGamesByFilter(
              GamesFilter(category: _category, sortBy: _sortBy));
      emit(_loadedGamesList);
    } catch (_) {
      emit([]);
    }
  }

  Future<void> changeSortBy(SortBy? value) async {
    _sortBy = value;
    fetchGames();
  }

  Future<void> changeCategory(GameCategory? value) async {
    _category = value;
    fetchGames();
  }
}
