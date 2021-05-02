import 'package:fbui/assets.dart';
import 'package:fbui/sections/headerButtonSection.dart';
import 'package:fbui/sections/roomSection.dart';
import 'package:fbui/sections/statusSection.dart';
import 'package:fbui/sections/storySection.dart';

import 'package:fbui/widgets/circularButton.dart';
import 'package:fbui/widgets/postCard.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget thinDivider = Divider(
      thickness: 1,
      color: Colors.grey[300],
    );

    Widget thickDivider = Divider(
      thickness: 10,
      color: Colors.grey[300],
    );

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "facebook",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            CircularButton(
                buttonIcon: Icons.search,
                // ignore: missing_return
                buttonAction: () {
                  print("search clicked");
                }),
            CircularButton(
                buttonIcon: Icons.message,
                // ignore: missing_return
                buttonAction: () {
                  print("message clicked");
                })
          ],
        ),
        body: ListView(
          children: [
            StatusSection(),
            thinDivider,
            HeaderButtonSection(),
            thickDivider,
            RoomSection(),
            thickDivider,
            StorySection(),
            thickDivider,
            PostCard(
              avatar: vikram,
              name: "VIKRAM",
              publishedAt: "12h",
              postTitle: "happy",
              postImage: dulquer,
              likeCount: "10k",
              commentCount: "1K",
              shareCount: "1k",
            ),
            thickDivider,
            PostCard(
              avatar: mohanlal,
              name: "Mohanlal",
              publishedAt: "2h",
              postTitle: "",
              postImage: vikram,
              likeCount: "10k",
              commentCount: "1K",
              shareCount: "1k",
            ),
            thickDivider,
            PostCard(
              avatar: dulquer,
              name: "DQ",
              publishedAt: "1h",
              postTitle: "",
              postImage: dulquer,
              likeCount: "100k",
              commentCount: "11K",
              shareCount: "1k",
            ),
          ],
        ),
      ),
    );
  }
}
