import 'package:flutter/material.dart';
import 'package:state_management/games/domain/games_filter.dart';
import 'package:state_management/games/screens/games_screen/widgets/filter_widget.dart';

import 'widgets/games_list.dart';

class GamesScreen extends StatefulWidget {
  const GamesScreen({
    Key? key,
  }) : super(key: key);

  @override
  _GamesScreenState createState() => _GamesScreenState();
}

class _GamesScreenState extends State<GamesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Free to Play Games (Demo)'),
      ),
      body: SafeArea(
        child: Scrollbar(
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: CustomScrollView(
              slivers: [
                FilterWidget(
                  filter: GamesFilter(),
                  onChangeCategory: (value) {},
                  onChangeSortBy: (value) {},
                ),
                const GamesList(games: []),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
