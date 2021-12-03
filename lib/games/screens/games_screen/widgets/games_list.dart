import 'package:flutter/material.dart';
import 'package:state_management/games/domain/game.dart';

import 'game_widget.dart';

class GamesList extends StatelessWidget {
  const GamesList({
    Key? key,
    required this.games,
  }) : super(key: key);

  final List<Game> games;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        _gameBuilder,
        childCount: games.length,
      ),
    );
  }

  Widget? _gameBuilder(context, index) {
    final game = games[index];
    return GameWidget(game: game);
  }
}
