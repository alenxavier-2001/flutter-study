import 'package:flutter/material.dart';

class HeaderButtonSection extends StatelessWidget {
  Widget headerButton({
    @required String buttonText,
    @required IconData buttonIcon,
    @required void Function() buttonAction,
    @required Color buttoncolor,
  }) {
    return FlatButton.icon(
        onPressed: buttonAction,
        icon: Icon(
          buttonIcon,
          color: buttoncolor,
        ),
        label: Text(buttonText));
  }

  @override
  Widget build(BuildContext context) {
    /*Widget verticalDivider = VerticalDivider(
      thickness: 1,
      color: Colors.grey[300],
    );*/

    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          headerButton(
              buttonText: "Live",
              buttonIcon: Icons.video_call,
              buttonAction: () {
                Text("Live clicked");
              },
              buttoncolor: Colors.red),
          //verticalDivider,
          headerButton(
              buttonText: "Photos",
              buttonIcon: Icons.photo_library,
              buttonAction: () {
                Text("Photo clicked");
              },
              buttoncolor: Colors.green),
          //verticalDivider,
          headerButton(
              buttonText: "Room",
              buttonIcon: Icons.video_call,
              buttonAction: () {
                Text("room clicked");
              },
              buttoncolor: Colors.purple),
        ],
      ),
    );
  }
}
