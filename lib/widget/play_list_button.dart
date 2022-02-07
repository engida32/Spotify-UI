import 'package:flutter/material.dart';

class PlayListButton extends StatelessWidget {
  final String followers;

  const PlayListButton({Key? key, required this.followers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 48),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              backgroundColor: Theme.of(context).colorScheme.secondary,
              primary: Theme.of(context).iconTheme.color,
              textStyle: Theme.of(context)
                  .textTheme
                  .caption!
                  .copyWith(fontSize: 12, letterSpacing: 2),
            ),
            child: Text("PLAY")),
        SizedBox(height: 8),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.favorite_border),
          iconSize: 30,
        ),
        SizedBox(height: 8),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.more_horiz),
          iconSize: 30,
        ),
        Spacer(),
        Text("Followers $followers",
            style: Theme.of(context).textTheme.overline!.copyWith(fontSize: 12),
            textAlign: TextAlign.left)
      ],
    );
  }
}
