import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MusicApp());

class MusicApp extends StatelessWidget {
  void playSound(int musicNumber) {
    final player = AudioCache();
    player.play('music$musicNumber.mp3');
  }

  Column buildKey({Color color, int musicNumber}) {
    return Column(
      children: [
        Icon(
          Icons.audiotrack,
          color: color,
          size: 50.0,
        ),
        FlatButton(
          color: color,
          onPressed: () {
            playSound(musicNumber);
          },
          child: Text(
            'play',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildKey(color: Colors.red[100], musicNumber: 1),
                buildKey(color: Colors.red[100], musicNumber: 2),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
