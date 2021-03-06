import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management/games/cubit/games_cubit.dart';
import 'package:state_management/games/screens/games_screen/games_screen.dart';

void main() async {
  runApp(const F2PGamesApp());
}

class F2PGamesApp extends StatelessWidget {
  const F2PGamesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'F2P Games App (Demo)',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:
          BlocProvider(create: (_) => GamesCubit(), child: const GamesScreen()),
    );
  }
}
