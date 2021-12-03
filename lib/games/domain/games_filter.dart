enum GameCategory {
  mmorpg,
  shooter,
  strategy,
  moba,
  racing,
  sports,
  social,
  sandbox,
  openWorld,
  survival,
  pvp,
  pve,
  pixel,
  voxel,
  zombie,
  turnBased,
  firstPerson,
  thirdPerson,
  topDown,
  tank,
  space,
  sailing,
  sideScroller,
  superhero,
  permadeath,
  card,
  battleRoyale,
  mmo,
  mmofps,
  mmotps,
  anime,
  fantasy,
  sciFi,
  fighting,
  actionRpg,
  action,
  military,
  martialArts,
  flight,
  lowSpec,
  towerDefense,
  horror,
  mmorts,
}

enum SortBy {
  releaseDate,
  popularity,
  alphabetical,
  relevance,
}

class GamesFilter {
  final GameCategory? category;
  final SortBy? sortBy;

  GamesFilter({
    this.category,
    this.sortBy,
  });

  GamesFilter copyWith({
    GameCategory? category,
    SortBy? sortBy,
  }) {
    return GamesFilter(
      category: category ?? this.category,
      sortBy: sortBy ?? this.sortBy,
    );
  }
}

extension GameCategoryKebabString on GameCategory {
  String get kebab => _camelCaseToKebabCase(toString().substring(13));
}

extension SortByKebabString on SortBy {
  String get kebab => _camelCaseToKebabCase(toString().substring(7));
}

String _camelCaseToKebabCase(String value) {
  return value.splitMapJoin(RegExp(r'[A-Z]'),
      onMatch: (m) => '-${m[0]!.toLowerCase()}',
      onNonMatch: (n) => n);
}
