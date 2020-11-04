import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primaryColor: Colors.blue),
    home: MyApp(),
  ));
}

class GameModel {
  final String name;
  final String image;

  GameModel(this.name, this.image);
}

class MyApp extends StatelessWidget {
  final List<GameModel> _game = [
    GameModel(
      "Grand Theft Auto V",
      "https://media.rawg.io/media/games/84d/84da2ac3fdfc6507807a1808595afb12.jpg",
    ),
    GameModel(
      "Portal 2",
      "https://media.rawg.io/media/games/328/3283617cb7d75d67257fc58339188742.jpg",
    ),
    GameModel(
      "The Witcher 3: Wild Hunt",
      "https://media.rawg.io/media/games/618/618c2031a07bbff6b4f611f10b6bcdbc.jpg",
    ),
    GameModel(
      "omb Raider (2013)",
      "https://media.rawg.io/media/games/ad2/ad2ffdf80ba993654f31da045bc02456.jpg",
    ),
    GameModel(
      "The Elder Scrolls V: Skyrim",
      "https://media.rawg.io/media/games/7cf/7cfc9220b401b7a300e409e539c9afd5.jpg",
    ),
    GameModel(
      "Left 4 Dead 2",
      "https://media.rawg.io/media/games/d58/d588947d4286e7b5e0e12e1bea7d9844.jpg",
    ),
    GameModel(
      "Borderlands 2",
      "https://media.rawg.io/media/games/588/588c6bdff3d4baf66ec36b1c05b793bf.jpg",
    ),
    GameModel(
      "BioShock Infinite",
      "https://media.rawg.io/media/games/fc1/fc1307a2774506b5bd65d7e8424664a7.jpg",
    ),
    GameModel(
      "Counter-Strike: Global Offensive",
      "https://media.rawg.io/media/games/736/73619bd336c894d6941d926bfd563946.jpg",
    ),
    GameModel(
      "Life is Strange",
      "https://media.rawg.io/media/games/562/562553814dd54e001a541e4ee83a591c.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Game Catalogue"),
      ),
      body: ListView.builder(
        itemCount: _game.length,
        itemBuilder: (context, index) {
          return SizedBox(
            height: 100,
            child: Card(
              child: Row(
                children: [
                  Image.network(
                    _game[index].image,
                    width: 150,
                  ),
                  SizedBox(width: 20),
                  Text(_game[index].name),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
