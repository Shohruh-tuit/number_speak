import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  void PlaySoundNumber(int num) async{
    final player = AudioCache();
    String url = 'number_$num.wav';
    player.play(url);
  }

  Expanded drawButton({Color color, int soundNumber}) {
   return Expanded(
      child: FlatButton(
        onPressed: (){
          PlaySoundNumber(soundNumber);
        },
        color: color,
        child: Text('$soundNumber', style: TextStyle(fontSize: 40, color: Colors.white),),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.yellow,
          body: SafeArea(
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                       drawButton(color: Colors.teal, soundNumber: 0),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      drawButton(color: Colors.red, soundNumber: 1),
                      drawButton(color: Colors.yellow, soundNumber: 2),
                      drawButton(color: Colors.blue, soundNumber: 3),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      drawButton(color: Colors.purple,soundNumber: 4),
                      drawButton(color: Colors.pinkAccent,soundNumber: 5),
                      drawButton(color: Colors.amber,soundNumber: 6),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      drawButton(color: Colors.deepOrangeAccent,soundNumber: 7),
                      drawButton(color: Colors.lightGreen,soundNumber: 8),
                      drawButton(color: Colors.black,soundNumber: 9),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      drawButton(color: Colors.indigo, soundNumber: 10)
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}