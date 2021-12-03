// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameDTO _$GameDTOFromJson(Map<String, dynamic> json) => GameDTO(
      json['id'] as int,
      json['title'] as String,
      json['thumbnail'] as String,
      json['short_description'] as String,
      json['platform'] as String,
      json['developer'] as String,
      DateTime.parse(json['release_date'] as String),
    );

Map<String, dynamic> _$GameDTOToJson(GameDTO instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'thumbnail': instance.thumbnail,
      'short_description': instance.shortDescription,
      'platform': instance.platform,
      'developer': instance.developer,
      'release_date': instance.releaseDate.toIso8601String(),
    };
