import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:state_management/games/domain/game.dart';

final DateFormat _format = DateFormat(DateFormat.YEAR_MONTH_DAY);

class GameWidget extends StatelessWidget {
  const GameWidget({
    Key? key,
    required this.game,
  }) : super(key: key);

  final Game game;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _GameThumbnail(thumbnail: game.thumbnail),
          ListTile(
            title: Text(game.title),
            subtitle: Text(game.shortDescription),
            contentPadding: const EdgeInsets.symmetric(horizontal: 8.0),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: DefaultTextStyle(
              style: Theme.of(context).textTheme.bodyText2!,
              overflow: TextOverflow.ellipsis,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: Text(game.developer)),
                  Text(_format.format(game.releaseDate)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _GameThumbnail extends StatelessWidget {
  const _GameThumbnail({
    Key? key,
    required this.thumbnail,
  }) : super(key: key);

  final String thumbnail;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      thumbnail,
      fit: BoxFit.fitWidth,
      loadingBuilder: _loadingBuilder,
    );
  }

  Widget _loadingBuilder(context, child, loadingProgress) {
    if (loadingProgress != null) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    return child;
  }
}
