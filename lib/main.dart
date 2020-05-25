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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Text("DÓ"),
              color: Colors.red,
              onPressed: () {
                playSound(1);
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Text("RÉ"),
              color: Colors.orange,
              onPressed: () {
                playSound(2);
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Text("MI"),
              color: Colors.yellow,
              onPressed: () {
                playSound(3);
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Text("FÁ"),
              color: Colors.green,
              onPressed: () {
                playSound(4);
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Text("SOL"),
              color: Colors.blue,
              onPressed: () {
                playSound(5);
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Text("LÁ"),
              color: Colors.purple,
              onPressed: () {
                playSound(6);
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Text("SI"),
              color: Colors.pink,
              onPressed: () {
                playSound(7);
              },
            ),
          ),
        ],
      ),
    );
  }
}
