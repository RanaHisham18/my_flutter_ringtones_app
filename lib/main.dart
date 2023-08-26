import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      backgroundColor: Colors.white70,
        appBar: AppBar(
          title: const Text('My Flutter Ringtones'),
          backgroundColor: Colors.indigoAccent,
        ),
        body: RingToneClass()
      ),
    );
  }
}

class RingToneClass  extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => RingToneClassState();
}

class RingToneClassState extends State<RingToneClass> {
  final player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
        Center(
          child: Row(
          children: [
          Padding(
          padding: const EdgeInsets.all(18.0),
    child:
    ElevatedButton(
    onPressed: (){
    player.play(AssetSource('music-1.mp3'));
    }, child: const Text("Play me"),
    ),
    ),
    Padding(
    padding: const EdgeInsets.all(18.0),
    child: ElevatedButton(
    onPressed: (){
    player.stop();
    }, child: const Text("Stop me"),
    ),
    ),
    ],
    ),
        ),
          Center(
            child: Container(
              margin: const EdgeInsets.all(10.0),

              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.deepOrangeAccent,

              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: ElevatedButton(
                      onPressed: (){
                        player.play(AssetSource('music-2.mp3'));
                      }, child: const Text("Play me"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: ElevatedButton(
                      onPressed: (){
                        player.stop();
                      }, child: const Text("Stop me"),
                    ),
                  ),
                ],
              ),
            ),
          ),
    ], ),
      );

  }
}
/*Center(
          child: Row(
            children: [
              ElevatedButton(
                onPressed: (){
                  final player = AudioPlayer();
                  player.play(AssetSource('music-2.mp3'));
                }, child: Text("Play me"),
              ),
              ElevatedButton(onPressed: (){
                player.stop();
              }, child: Text("Stop me"),
              ),
            ],
          ),




        ),*/