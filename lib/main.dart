import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.lightBlue,
            body: SafeArea(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          child: FlatButton(
                            onPressed: (){
                              AudioPlayer audioPlayer = AudioPlayer();
                              audioPlayer.play('baboon.wav', volume: 1.0);
                              print('baboon clicked');
                            },
                            child: Image(
                              image: AssetImage('images/baboon.jpg'),

                            ),
                          ),
                        ),
                        Expanded(
                          child: FlatButton(
                            onPressed: (){
                              final player = AudioCache();
                              player.play('bearz.wav');
                              print('bear clicked');
                            },
                            child: Image(
                              image: AssetImage('images/bear.jpg'),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          child: FlatButton(
                            onPressed: (){
                              final player = AudioCache();
                              player.play('elephant.wav');
                              print('elephant clicked');
                            },
                            child: Image(
                              image: AssetImage('images/elephant.jpg'),
                            ),
                          ),
                        ),
                        Expanded(
                          child: FlatButton(
                            onPressed: (){
                              final player = AudioCache();
                              player.play('hippo.wav');
                              print('hippo clicked');
                            },
                            child: Image(
                              image: AssetImage('images/hippo.jpg'),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            )
        )
    );
  }
}
