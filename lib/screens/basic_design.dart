import 'package:flutter/material.dart';

class BasicDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Photo
          Image(image: AssetImage('assets/imageHalo2.jpg')),
          //Tittle
          _Tittle(),
          // Button Section
          _ButtonSection(),
          // Description
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: Text(
                'Id deserunt labore ipsum Lorem. In aliqua esse quis sunt esse amet nisi pariatur voluptate. Eiusmod adipisicing dolor consequat aute ut eiusmod exercitation sit aliquip officia ut. Laborum mollit dolore elit tempor irure deserunt esse adipisicing ipsum aliquip laborum labore laborum. Ex veniam sint laboris labore mollit ullamco sunt consequat ex minim. Nisi irure incididunt excepteur adipisicing dolor aliqua. Voluptate laboris esse duis cupidatat culpa eu quis ea dolor minim ea consectetur consectetur.', textAlign: TextAlign.justify,),
          )
        ],
      ),
    );
  }
}

class _Tittle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Worl Halo is the best game on Xbox',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Worl Halo',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Expanded(child: Container()),
          Icon(Icons.star, color: Colors.greenAccent),
          Text('41'),
        ],
      ),
    );
  }
}

class _ButtonSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 30.0,
        vertical: 10.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomButton(icon: Icons.call, text: 'CALL'),
          CustomButton(icon: Icons.explore, text: 'ROUTE'),
          CustomButton(icon: Icons.share, text: 'SHARE'),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomButton({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          this.icon,
          color: Color(0xff868A57),
          size: 30,
        ),
        Text(this.text, style: TextStyle(color: Color(0xff868A57))),
      ],
    );
  }
}
