import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

class AlarmList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void _showSnackBar(String text) {
      final snackBar = SnackBar(
        duration: Duration(milliseconds: 500),
        backgroundColor: Colors.blueGrey,
        content: Text(text),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }

    ListTile tiles(String s) {
      return ListTile(
        leading: const Icon(
          Icons.play_arrow_rounded,
          color: Colors.blueGrey,
        ),
        title: Text(
          'Reminder Tone $s',
          style: TextStyle(
            fontSize: 18.0,
            color: Color(0xFF1B2631),
          ),
        ),
        onTap: () {
          final player = AudioCache();
          player.play('Reminder_$s.mp3');
        },
        onLongPress: () => _showSnackBar("Reminder_$s.mp3 selected"),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Select Alarm Tone'),
      ),
      body: Container(
        color: Color(0xFFF7F9F9),
        child: ListView(
          padding: EdgeInsets.zero,
          children: ListTile.divideTiles(
              context: context,
              color: Colors.black,
              tiles: [
                tiles('1'),
                tiles('2'),
                tiles('3'),
                tiles('4'),
                tiles('5'),
                tiles('6'),
                tiles('7'),
                Divider(),
              ]).toList(),
        ),
      ),
    );
  }
}
