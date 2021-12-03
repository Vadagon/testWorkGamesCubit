import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:state_management/games/api/dto/game.dto.dart';

part 'games_client.g.dart';

@RestApi(baseUrl: "https://www.freetogame.com/api")
abstract class GamesClient {
  factory GamesClient(Dio dio, {String baseUrl}) = _GamesClient;

  @GET("/games")
  Future<List<GameDTO>> fetchByFilter(@Queries() Map<String, dynamic> filter);
}