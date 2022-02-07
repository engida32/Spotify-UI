import 'package:flutter/material.dart';

import '../data/data.dart';
import '../widget/widget.dart';

class PlayListScreen extends StatefulWidget {
  final Playlist playlist;
  const PlayListScreen({Key? key, required this.playlist}) : super(key: key);

  @override
  State<PlayListScreen> createState() => _PlayListScreenState();
}

class _PlayListScreenState extends State<PlayListScreen> {
  ScrollController? _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _scrollController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 140,
        leading: Padding(
          padding: EdgeInsets.symmetric(horizontal: 17),
          child: Row(
            children: [
              InkWell(
                customBorder: const CircleBorder(),
                child: Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      color: Colors.black26, shape: BoxShape.circle),
                  child: Icon(Icons.chevron_left, size: 28),
                ),
              ),
              SizedBox(height: 20),
              InkWell(
                customBorder: const CircleBorder(),
                child: Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      color: Colors.black26, shape: BoxShape.circle),
                  child: Icon(Icons.chevron_right, size: 28),
                ),
              )
            ],
          ),
        ),
        actions: [
          TextButton.icon(
              style: TextButton.styleFrom(
                  primary: Theme.of(context).iconTheme.color),
              onPressed: () {},
              icon: Icon(Icons.account_circle_outlined),
              label: Text("Engida Lish")),
          SizedBox(width: 8),
          IconButton(
              padding: EdgeInsets.only(),
              onPressed: () {},
              icon: const Icon(Icons.keyboard_arrow_down_outlined)),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFFAF1019), Theme.of(context).backgroundColor],
                stops: [0, 0.3])),
        child: Scrollbar(
            isAlwaysShown: true,
            controller: _scrollController,
            child: ListView(
              controller: _scrollController,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
              children: [
                PlayListHeader(playlist: widget.playlist),
                TrackList(tracks: widget.playlist.songs),
              ],
            )),
      ),
    );
  }
}
