import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {
  void playNote(int noteNbr) {
    final player = AudioCache();
    player.play('note$noteNbr.wav');
  }

  Widget buildKeys({int noteNbr, Color color}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: color),
        onPressed: () {
          playNote(noteNbr);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKeys(color: Colors.red, noteNbr: 1),
              buildKeys(color: Colors.orange, noteNbr: 2),
              buildKeys(color: Colors.blue, noteNbr: 3),
              buildKeys(color: Colors.green, noteNbr: 4),
              buildKeys(color: Colors.yellow, noteNbr: 5),
              buildKeys(color: Colors.blueGrey, noteNbr: 6),
              buildKeys(color: Colors.greenAccent, noteNbr: 7),
            ],
          ),
        ),
      ),
    );
  }
}
