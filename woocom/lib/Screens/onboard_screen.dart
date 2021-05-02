import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class OnBoardScreen extends StatefulWidget {
  @override
  _OnBoardScreenState createState() => _OnBoardScreenState();
}

final _controller = PageController(
  initialPage: 0,
);

int _currentpage = 0;
//double _currentpagedouble = 0;

List<Widget> _pages = [
  Column(
    children: [
      Expanded(child: Image.asset('assets/delivery.png')),
      Text(
        "set your delivery location",
      )
    ],
  ),
  Column(
    children: [
      Expanded(child: Image.asset('assets/location.png')),
      Text("set your delivery location")
    ],
  ),
  Column(
    children: [
      Expanded(child: Image.asset('assets/food.jpg')),
      Text("set your food")
    ],
  ),
];

class _OnBoardScreenState extends State<OnBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView(
            controller: _controller,
            children: _pages,
            onPageChanged: (index) {
              _currentpage = index;
            },
          ),
        ),
        DotsIndicator(
          dotsCount: _pages.length,
          position: _currentpage.toDouble(),
          decorator: DotsDecorator(
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}
