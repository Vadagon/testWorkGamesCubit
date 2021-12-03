import 'package:json_annotation/json_annotation.dart';

import 'package:state_management/games/domain/games_filter.dart';

part 'games_filter.dto.g.dart';

@JsonSerializable(
  createFactory: false,
  includeIfNull: false,
  fieldRename: FieldRename.kebab,
)
class GamesFilterDTO {
  static String? categoryToJson(GameCategory? category) {
    return category?.kebab;
  }

  static String? sortByToJson(SortBy? sortBy) {
    return sortBy?.kebab;
  }

  @JsonKey(toJson: categoryToJson)
  final GameCategory? category;

  @JsonKey(toJson: sortByToJson)
  final SortBy? sortBy;

  GamesFilterDTO(this.category, this.sortBy);

  factory GamesFilterDTO.fromGamesFilter(GamesFilter filter) {
    return GamesFilterDTO(filter.category, filter.sortBy);
  }

  Map<String, dynamic> toJson() => _$GamesFilterDTOToJson(this);
}
