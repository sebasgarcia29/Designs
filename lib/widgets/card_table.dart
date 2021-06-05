import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          _SingleCard(
              icon: Icons.pie_chart, color: Colors.blue, text: 'General'),
          _SingleCard(
              icon: Icons.directions_car,
              color: Colors.purple,
              text: 'Transport'),
        ]),
        TableRow(children: [
          _SingleCard(
              icon: Icons.shopping_bag, color: Colors.pink, text: 'Shopping'),
          _SingleCard(
              icon: Icons.note_add, color: Colors.orange, text: 'Bills'),
        ]),
        TableRow(children: [
          _SingleCard(
              icon: Icons.subscriptions,
              color: Colors.blueAccent,
              text: 'Entertaiment'),
          _SingleCard(
              icon: Icons.catching_pokemon,
              color: Colors.green,
              text: 'Grocery'),
        ]),
        TableRow(children: [
          _SingleCard(
              icon: Icons.gamepad_outlined,
              color: Colors.amber,
              text: 'Pokemon'),
          _SingleCard(
              icon: Icons.yard_outlined, color: Colors.cyan, text: 'More'),
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard({
    Key? key,
    required this.icon,
    required this.color,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var column = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: this.color,
          child: Icon(this.icon, size: 35, color: Colors.white),
          radius: 30,
        ),
        SizedBox(height: 10),
        Text(this.text, style: TextStyle(color: this.color, fontSize: 18))
      ],
    );
    return _SingleCardBackground(widget: column);
  }
}

class _SingleCardBackground extends StatelessWidget {
  final Widget widget;
  const _SingleCardBackground({Key? key, required this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final boxDecoration = BoxDecoration(
      color: Color.fromRGBO(62, 66, 107, 0.7),
      borderRadius: BorderRadius.circular(20),
    );

    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: boxDecoration,
            child: widget,
          ),
        ),
      ),
    );
  }
}
