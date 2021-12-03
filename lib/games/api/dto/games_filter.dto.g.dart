// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'games_filter.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$GamesFilterDTOToJson(GamesFilterDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('category', GamesFilterDTO.categoryToJson(instance.category));
  writeNotNull('sort-by', GamesFilterDTO.sortByToJson(instance.sortBy));
  return val;
}
