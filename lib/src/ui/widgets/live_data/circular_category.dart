import 'package:flutter/material.dart';

class CircularCategory extends StatelessWidget {
  final String title;
  final String img;
  const CircularCategory({Key key, this.title, this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 35,
            child: Center(
              child: Text(img),
            ),
          ),
          Text(title)
        ],
      ),
    );
  }
}
