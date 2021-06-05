import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 20.0,
    );
    final textSubStyle = TextStyle(
      fontSize: 16.0,
      color: Colors.white,
    );
    return SafeArea(
      bottom: false,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Classify transacction',
              style: textStyle,
            ),
            SizedBox(height: 10.0,),
            Text('Classify this transaction into a particular category',
                style: textSubStyle),
          ],
        ),
      ),
    );
  }
}
