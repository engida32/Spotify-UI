import 'package:flutter/material.dart';
import 'package:flutter_spotify_ui/data/data.dart';
import 'package:flutter_spotify_ui/model/current_track_model.dart';
import 'package:provider/provider.dart';

class TrackList extends StatelessWidget {
  final List<Song> tracks;
  const TrackList({Key? key, required this.tracks}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
      showCheckboxColumn: false,
      dataRowHeight: 51,
      headingTextStyle:
          Theme.of(context).textTheme.overline!.copyWith(fontSize: 12),
      columns: const [
        DataColumn(label: Text("TITLE")),
        DataColumn(label: Text("ARTIST")),
        DataColumn(label: Text("ALBUM")),
        DataColumn(label: Icon(Icons.access_time))
      ],
      rows: tracks.map((e) {
        final selected = context.watch<CurrentTrackModel>().selected?.id == e.id;
        final textStyle = TextStyle(
            color: selected
                ? Theme.of(context).accentColor
                : Theme.of(context).iconTheme.color);
        return DataRow(
          cells: [
            DataCell(
              Text(e.title, style: textStyle),
            ),
            DataCell(
              Text(e.artist, style: textStyle),
            ),
            DataCell(
              Text(e.album, style: textStyle),
            ),
            DataCell(
              Text(e.duration, style: textStyle),
            ),
          ],
          selected: selected,
          onSelectChanged: (_) => context.read<CurrentTrackModel>().selectTrack(e),
        );
      }).toList(),
    );
  }
}
