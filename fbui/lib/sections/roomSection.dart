import 'package:fbui/assets.dart';
import 'package:fbui/widgets/avatar.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          createRoomButton(),
          Avatar(
            displayImage: dulquer,
            displayStatus: true,
          ),
          Avatar(
            displayImage: mohanlal,
            displayStatus: true,
          ),
          Avatar(
            displayImage: hrithik,
            displayStatus: true,
          ),
          Avatar(
            displayImage: vikram,
            displayStatus: true,
          ),
          Avatar(
            displayImage: dulquer,
            displayStatus: true,
          ),
          Avatar(
            displayImage: hrithik,
            displayStatus: true,
          ),
          Avatar(
            displayImage: vikram,
            displayStatus: true,
          ),
          Avatar(
            displayImage: mohanlal,
            displayStatus: true,
          ),
        ],
      ),
    );
  }

  Widget createRoomButton() {
    return Container(
      padding: EdgeInsets.only(left: 5, right: 5),
      child: OutlineButton.icon(
        shape: StadiumBorder(),
        onPressed: () {
          print("creeate room");
        },
        icon: Icon(
          Icons.video_call,
          color: Colors.purple,
        ),
        label: Text(
          "Create \nRoom",
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
        borderSide: BorderSide(
          color: Colors.blue[100],
          width: 2,
        ),
      ),
    );
  }
}
