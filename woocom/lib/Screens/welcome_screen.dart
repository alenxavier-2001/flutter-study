import 'package:flutter/material.dart';
import 'package:woocom/Screens/onboard_screen.dart';

class WelcomeScreen extends StatelessWidget {
  bool _validPhoneNumber = false;
  void showBottomSheet(context) {
    showModalBottomSheet(
      isScrollControlled: true,
      isDismissible: true,
      context: context,
      builder: (context) =>
          StatefulBuilder(builder: (context, StateSetter myState) {
        return Container(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'LOGIN',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Enter your phone number to proceed',
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  decoration: InputDecoration(
                    prefixText: '91',
                    labelText: '10 digit mobile number',
                  ),
                  autofocus: true,
                  keyboardType: TextInputType.phone,
                  maxLength: 10,
                  onChanged: (value) {
                    if (value.length == 10) {
                      myState(() {
                        _validPhoneNumber = true;
                      });
                    } else {
                      myState(() {
                        _validPhoneNumber = false;
                      });
                    }
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: AbsorbPointer(
                        absorbing: _validPhoneNumber ? false : true,
                        child: TextButton(
                            onPressed: () {},
                            child: Text(_validPhoneNumber
                                ? 'CONTINUE'
                                : 'ENTER PHONR NUMBER')),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
            //),
          ),
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Stack(
            children: [
              Column(
                children: [
                  Expanded(
                    child: OnBoardScreen(),
                  ),
                  Text("Ready to order from nearest"),
                  SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text("Set Delivery loc"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    child: RichText(
                        text: TextSpan(
                            text: "Already a Customer?",
                            style: TextStyle(color: Colors.black),
                            children: [
                          TextSpan(
                              text: "Login",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black))
                        ])),
                    onPressed: () {
                      showBottomSheet(context);
                    },
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
              Positioned(
                  right: 0.0,
                  top: 10.0,
                  child: TextButton(
                    child: Text(
                      "SKIP",
                      style: TextStyle(color: Colors.deepOrangeAccent),
                    ),
                    onPressed: () {},
                  )),
            ],
          )),
    );
  }
}
