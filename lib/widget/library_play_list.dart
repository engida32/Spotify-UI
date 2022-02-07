import 'package:flutter/material.dart';
import 'package:flutter_spotify_ui/data/data.dart';

// class _LibraryPlayList extends StatefulWidget {
//   const _LibraryPlayList({Key? key}) : super(key: key);

//   @override
//   __LibraryPlayListState createState() => __LibraryPlayListState();
// }

// class __LibraryPlayListState extends State<_LibraryPlayList> {
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       padding: EdgeInsets.symmetric(vertical: 20),
//       physics: ClampingScrollPhysics(),
//       children: [
//         Padding(
//             padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
//             child: Text(
//               "YOUR LIBRARY",
//               style: Theme.of(context).textTheme.headline4,
//               overflow: TextOverflow.ellipsis,
//             )),
//         ...yourLibrary
//             .map((e) => ListTile(
//                   dense: true,
//                   title: Text(
//                     e,
//                     style: Theme.of(context).textTheme.bodyText2,
//                     overflow: TextOverflow.ellipsis,
//                   ),
//                   onTap: () {},
//                 ))
//             .toList()
//       ],
//     );
//   }
// }
