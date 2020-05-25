import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListButtons(),
      ),
    );
  }
}

class ListButtons extends StatefulWidget {
  @override
  _ListButtonsState createState() => _ListButtonsState();
}

class _ListButtonsState extends State<ListButtons> {
  void playSound(int noteNumber) {
    final player = AudioCache();
    player.play("note$noteNumber.wav");
  }

  Expanded buildKeys(Color color, int soundNote) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNote);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildKeys(Colors.red, 1),
          buildKeys(Colors.orange, 2),
          buildKeys(Colors.yellow, 3),
          buildKeys(Colors.green, 4),
          buildKeys(Colors.blue, 5),
          buildKeys(Colors.purple, 6),
          buildKeys(Colors.pink, 7),
        ],
      ),
    );
  }
}
