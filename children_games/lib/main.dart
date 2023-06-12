import 'package:flutter/material.dart';

void main() {
  runApp(ChildrenGamesApp());
}

class ChildrenGamesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Children Games',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Game> games = [
    Game(
      title: 'Drawing game',
      description:
          'This game for 2 or more players. Take paper and start to draw. one stroke at a time, then next player turn.',
      image: 'https://picsum.photos/250?image=9',
    ),
    Game(
      title: 'Fysical game',
      description: 'This is game 2',
      image: 'https://picsum.photos/250?image=10',
    ),
    Game(
      title: 'Intelectual stimulation game',
      description: 'This is game 3',
      image: 'https://picsum.photos/250?image=11',
    ),
    Game(
      title: 'Cooperative game',
      description: 'description',
      image: 'https://picsum.photos/250?image=13',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Children Games'),
      ),
      body: ListView.builder(
        itemCount: games.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(games[index].title),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(game: games[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final Game game;

  DetailPage({required this.game});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(game.title),
      ),
      body: Column(
        children: <Widget>[
          Image.network(game.image),
          Text(game.title),
          Text(game.description),
        ],
      ),
    );
  }
}

class Game {
  final String title;
  final String description;
  final String image;

  Game({required this.title, required this.description, required this.image});
}
