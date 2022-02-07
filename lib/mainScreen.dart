import 'package:flutter/material.dart';
import 'package:flutter_spotify_ui/data/data.dart';
import 'package:flutter_spotify_ui/screens/playlist_sreen.dart';
import 'package:flutter_spotify_ui/widget/widget.dart';

class Shell extends StatelessWidget {
  const Shell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              if (MediaQuery.of(context).size.width > 800) SideMenu(),
              Expanded(
                  child: PlayListScreen(
                playlist: lofihiphopPlaylist,
              ))
            ],
          )),
          CurrentTrack(),
        ],
      ),
    );
  }
}
