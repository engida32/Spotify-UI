import 'package:flutter/material.dart';

import '../data/data.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      width: 280,
      height: double.infinity,
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Image.asset(
                  'assets/spotify_logo.png',
                  height: 55,
                  filterQuality: FilterQuality.high,
                ),
              ),
            ],
          ),
          side_menu_item(iconData: Icons.home, title: 'Home', onTap: () {}),
          side_menu_item(iconData: Icons.search, title: 'Search', onTap: () {}),
          side_menu_item(
              iconData: Icons.audiotrack, title: 'Radio', onTap: () {}),
          SizedBox(height: 10),
          _LibraryPlayList()
        ],
      ),
    );
  }
}

class side_menu_item extends StatelessWidget {
  final IconData iconData;
  final String title;
  final VoidCallback onTap;
  const side_menu_item({
    Key? key,
    required this.iconData,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(iconData),
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyText1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

class _LibraryPlayList extends StatefulWidget {
  const _LibraryPlayList({Key? key}) : super(key: key);

  @override
  __LibraryPlayListState createState() => __LibraryPlayListState();
}

class __LibraryPlayListState extends State<_LibraryPlayList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scrollbar(
        isAlwaysShown: true,
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 20),
          physics: ClampingScrollPhysics(),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                    child: Text(
                      "YOUR LIBRARY",
                      style: Theme.of(context).textTheme.headline4,
                      overflow: TextOverflow.ellipsis,
                    )),
                ...yourLibrary
                    .map((e) => ListTile(
                          dense: true,
                          title: Text(
                            e,
                            style: Theme.of(context).textTheme.bodyText2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          onTap: () {},
                        ))
                    .toList()
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                    child: Text(
                      "PLAYLIST",
                      style: Theme.of(context).textTheme.headline4,
                      overflow: TextOverflow.ellipsis,
                    )),
                ...playlists
                    .map((e) => ListTile(
                          dense: true,
                          title: Text(
                            e,
                            style: Theme.of(context).textTheme.bodyText2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          onTap: () {},
                        ))
                    .toList()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
