import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.teal[100],
            appBar: AppBar(
                title: Text('AnimalSounds'), backgroundColor: Colors.teal),
            body: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      child: FlatButton(
                        onPressed: () {
                          final player = AudioCache();
                          player.play('cat.mp3');
                        },
                        color: Colors.red,
                        child: Image.asset('images/cat.png'),
                        height: 10.0,
                      ),
                    ),
                  ),
                  Expanded(
                      child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          child: FlatButton(
                            onPressed: () {
                              final player = AudioCache();
                              player.play('dog.mp3');
                            },
                            color: Colors.yellow,
                            child: Image.asset('images/dog.png'),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: FlatButton(
                            onPressed: () {
                              final player = AudioCache();
                              player.play('cow.mp3');
                            },
                            color: Colors.orange,
                            child: Image.asset('images/cow.png'),
                          ),
                        ),
                      ),
                    ],
                  )),
                  Expanded(
                      child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          child: FlatButton(
                            onPressed: () {
                              final player = AudioCache();
                              player.play('pig.mp3');
                            },
                            color: Colors.green,
                            child: Image.asset('images/pig.png'),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: FlatButton(
                              onPressed: () {
                                final player = AudioCache();
                                player.play('elephant.mp3');
                              },
                              color: Colors.teal,
                              child: Image.asset('images/elephant.png')),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: FlatButton(
                              onPressed: () {
                                final player = AudioCache();
                                player.play('rooster.mp3');
                              },
                              color: Colors.blue,
                              child: Image.asset('images/rooster.png')),
                        ),
                      ),
                    ],
                  )),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                        child: FlatButton(
                          onPressed: () {
                            final player = AudioCache();
                            player.play('goat.mp3');
                          },
                          color: Colors.purple,
                          height: 200.0,
                          child: Image.asset('images/goat.jpg'),
                        ),
                      ),
                    ],
                  )),
                ],
              ),
            )));
  }
}
