import 'package:flutter/material.dart';
// import in the begining of the file
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  // Function Play Song
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int soundNumber}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
          primary: Color.fromARGB(255, 4, 0, 0),
          onSurface: Colors.red,
        ),
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildKey(color: Colors.red, soundNumber: 1),
            buildKey(color: Colors.redAccent, soundNumber: 2),
            buildKey(color: Colors.black, soundNumber: 3),
            buildKey(color: Colors.orangeAccent, soundNumber: 4),
            buildKey(color: Colors.blue, soundNumber: 5),
            buildKey(color: Colors.green, soundNumber: 6),
            buildKey(color: Colors.lightGreenAccent, soundNumber: 7)
          ],
        ),
      ),
    );
  }
}
