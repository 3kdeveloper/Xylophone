import 'package:flutter/material.dart';

import 'package:audioplayers/audio_cache.dart';

class HomePage extends StatelessWidget {
  void playSound(int noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  Widget xyloTiles({Color color, int noteNumber}) {
    return Expanded(
      child: InkWell(
        child: Container(
          color: color,
        ),
        onTap: () {
          playSound(noteNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            xyloTiles(color: Colors.green, noteNumber: 1),
            xyloTiles(color: Colors.yellow, noteNumber: 2),
            xyloTiles(color: Colors.blue, noteNumber: 3),
            xyloTiles(color: Colors.purple, noteNumber: 4),
            xyloTiles(color: Colors.teal, noteNumber: 5),
            xyloTiles(color: Colors.indigo, noteNumber: 6),
            xyloTiles(color: Colors.amber, noteNumber: 7),
          ],
        ),
      ),
    );
  }
}
