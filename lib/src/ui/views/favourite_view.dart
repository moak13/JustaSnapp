import 'package:flutter/material.dart';

class FavouriteView extends StatefulWidget {
  FavouriteView({Key key}) : super(key: key);

  @override
  _FavouriteViewState createState() => _FavouriteViewState();
}

class _FavouriteViewState extends State<FavouriteView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text('You have no ads in your favorite'),
        ),
        Expanded(
          child: Container(),
        ),
      ],
    ));
  }
}
