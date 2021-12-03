class Game {
  final int id;
  final String title;
  final String thumbnail;
  final String shortDescription;
  final String platform;
  final String developer;
  final DateTime releaseDate;

  Game({
    required this.id,
    required this.title,
    required this.thumbnail,
    required this.shortDescription,
    required this.platform,
    required this.developer,
    required this.releaseDate,
  });
}
