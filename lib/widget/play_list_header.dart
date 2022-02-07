import 'dart:math';

import 'package:flutter/material.dart';

import '../data/data.dart';
import 'widget.dart';

class PlayListHeader extends StatelessWidget {
  final Playlist playlist;
  const PlayListHeader({Key? key, required this.playlist}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(
              playlist.imageURL,
              height: 200,
              width: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 16),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("PLAYLIST",
                    style: Theme.of(context)
                        .textTheme
                        .overline!
                        .copyWith(fontSize: 12)),
                SizedBox(height: 12),
                Text(playlist.name,
                    style: Theme.of(context).textTheme.headline2),
                SizedBox(height: 16),
                Text(playlist.description,
                    style: Theme.of(context).textTheme.subtitle1),
                SizedBox(height: 16),
                Text(
                  'Created By ${playlist.creator} *${playlist.songs.length} song , ${playlist.duration}',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ],
            )),
          ],
        ),
        SizedBox(height: 20),
        PlayListButton(followers: playlist.followers),
      ],
    );
  }
}
