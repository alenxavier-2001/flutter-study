import 'package:fbui/assets.dart';
import 'package:fbui/widgets/storyCard.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            labelText: "Add to Story",
            avatar: dulquer,
            story: dulquer,
            createStoryStatus: true,
          ),
          StoryCard(
            labelText: "Mohanlal",
            avatar: mohanlal,
            story: vikram,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "hrithik",
            avatar: hrithik,
            story: dulquer,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "vikram",
            avatar: vikram,
            story: dulquer,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "dulquer",
            avatar: dulquer,
            story: dulquer,
            displayBorder: true,
          ),
        ],
      ),
    );
  }
}
