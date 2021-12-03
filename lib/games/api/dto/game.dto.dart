import 'package:json_annotation/json_annotation.dart';
import 'package:state_management/games/domain/game.dart';

part 'game.dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GameDTO {
  final int id;
  final String title;
  final String thumbnail;
  final String shortDescription;
  final String platform;
  final String developer;
  final DateTime releaseDate;

  GameDTO(this.id, this.title, this.thumbnail, this.shortDescription, this.platform, this.developer, this.releaseDate);

  factory GameDTO.fromJson(Map<String, dynamic> json) => _$GameDTOFromJson(json);

  Map<String, dynamic> toJson() => _$GameDTOToJson(this);

  Game toGame() {
    return Game(
      id: id,
      title: title,
      thumbnail: thumbnail,
      shortDescription: shortDescription,
      platform: platform,
      developer: developer,
      releaseDate: releaseDate,
    );
  }
}
