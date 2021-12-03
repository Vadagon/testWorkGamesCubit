import 'game.dart';
import 'games_filter.dart';

abstract class GamesRepository {
  Future<List<Game>> fetchGamesByFilter(GamesFilter filter);
}

class GamesService {
  final GamesRepository _gamesRepository;

  GamesService(this._gamesRepository);

  Future<List<Game>> fetchGamesByFilter(GamesFilter filter) {
    return _gamesRepository.fetchGamesByFilter(filter);
  }
}